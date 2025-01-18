using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ConvertClimateData;

internal class Program
{
    const string kInputFile = "LANDISv7-Malheur_Historical_Climate_Maurer_1990-2010.csv";
    const string kOutputFile = "LANDISv8-Malheur_Historical_Climate_Maurer_1990-2010.csv";

    class ClimateRecord
    {
        public int Year;
        public int Month;
        public int Day;
        public string MinTemp = "";
        public string MaxTemp = "";
        public string Precip = "";
        public string WindSpeed = "";
        public string WindDirection = "";
    };

    static void Main(string[] args)
    {
        var lines = File.ReadLines(kInputFile).Select(line => line.Split(','));

        var data = new SortedDictionary<DateTime, ClimateRecord>();
        string variable = "";
        int skipLines = 0;
        int lineNo = 0;

        foreach (var line in lines)
        {
            ++lineNo;
            Console.WriteLine($"line {lineNo}: [{string.Join(",", line)}]");

            if (skipLines > 0)
            {
                --skipLines;
                Console.WriteLine($"Skipping line {lineNo}");
                continue;
            }

            string f0 = line[0];
            if (string.IsNullOrEmpty(f0))
            {
                Console.WriteLine($"Skipping line {lineNo}");
                continue;
            }

            if (f0[0] == '#')
            {
                variable = f0.Split(' ')[1];
                skipLines = 2;
                Console.WriteLine($"Variable: {variable}");
                continue;
            }

            var year = Convert.ToInt32(f0[0..4]);
            var month = Convert.ToInt32(f0[5..7]);
            var day = Convert.ToInt32(f0[8..10]);
            var date = new DateTime(year, month, day);

            ClimateRecord climateRecord;
            if (!data.TryGetValue(date, out climateRecord!))
            {
                climateRecord = new ClimateRecord
                {
                    Year = year,
                    Month = month,
                    Day = day
                };
                data[date] = climateRecord;
            }

            switch (variable)
            {
                case "ppt":
                {
                    climateRecord.Precip = line[1];
                    break;
                }
                case "tmax":
                {
                    climateRecord.MaxTemp = line[1];
                    break;
                }
                case "tmin":
                {
                    climateRecord.MinTemp = line[1];
                    break;
                }
                case "windSpeed":
                {
                    climateRecord.WindSpeed = line[1];
                    break;
                }
                case "winddirection":
                {
                    climateRecord.WindDirection = line[1];
                    break;
                }
                default:
                {
                    Console.WriteLine($"Unknown variable: {variable}");
                    Environment.Exit(1);
                    break;
                }
            }
            Console.WriteLine($"Captured data from line {lineNo}");
        }

        Console.WriteLine("Writing output file...");

        using var writer = new StreamWriter(kOutputFile);
        writer.WriteLine("Year,Month,Day,Variable,1");

        foreach (var (date, record) in data)
        {
            writer.WriteLine($"{record.Year},{record.Month},{record.Day},Tmin,{record.MinTemp}");
        }

        foreach (var (date, record) in data)
        {
            writer.WriteLine($"{record.Year},{record.Month},{record.Day},Tmax,{record.MaxTemp}");
        }

        foreach (var (date, record) in data)
        {
            writer.WriteLine($"{record.Year},{record.Month},{record.Day},precip,{record.Precip}");
        }

        foreach (var (date, record) in data)
        {
            writer.WriteLine($"{record.Year},{record.Month},{record.Day},windSpeed,{record.WindSpeed}");
        }

        foreach (var (date, record) in data)
        {
            writer.WriteLine($"{record.Year},{record.Month},{record.Day},windNorthing,{record.WindDirection}");
        }

        writer.Close();
        Console.WriteLine("Output file written");
    }
}
