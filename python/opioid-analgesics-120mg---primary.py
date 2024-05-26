# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"96067020","system":"multilex"},{"code":"4559020","system":"multilex"},{"code":"76935020","system":"multilex"},{"code":"56810020","system":"multilex"},{"code":"41379020","system":"multilex"},{"code":"4567020","system":"multilex"},{"code":"50341020","system":"multilex"},{"code":"79351020","system":"multilex"},{"code":"80384020","system":"multilex"},{"code":"62550020","system":"multilex"},{"code":"99560020","system":"multilex"},{"code":"99562020","system":"multilex"},{"code":"56798020","system":"multilex"},{"code":"81690020","system":"multilex"},{"code":"62560020","system":"multilex"},{"code":"74009020","system":"multilex"},{"code":"83126020","system":"multilex"},{"code":"73057020","system":"multilex"},{"code":"81630020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('opioid-analgesics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["opioid-analgesics-120mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["opioid-analgesics-120mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["opioid-analgesics-120mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
