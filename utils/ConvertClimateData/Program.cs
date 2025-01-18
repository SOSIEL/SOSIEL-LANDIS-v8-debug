using System;
using System.IO;
using System.Linq;

const string kInputFile = "LANDISv7-Malheur_Historical_Climate_Maurer_1990-2010.csv";
const string kOutputFile = "LANDISv8-Malheur_Historical_Climate_Maurer_1990-2010.csv";
const int kSkipLines = 3;

using var writer = new StreamWriter(kOutputFile);
writer.WriteLine("Year,Month,Day,Variable");

var lines = File.ReadLines(kInputFile)
    .Skip(kSkipLines)
    .Select(line => line.Split(','));

int lineNo = kSkipLines;
foreach (var line in lines)
{
    ++lineNo;
    Console.WriteLine($"line {lineNo}: [{string.Join("", line)}]");
    string date = line[0];
    if (string.IsNullOrEmpty(date) || !char.IsAsciiDigit(date[0])) continue;
    var year = date[0..4];
    var month = date[5..7];
    var day = date[8..10];
    writer.WriteLine($"{year},{month},{day},{line[1]}");
}

writer.Close();
