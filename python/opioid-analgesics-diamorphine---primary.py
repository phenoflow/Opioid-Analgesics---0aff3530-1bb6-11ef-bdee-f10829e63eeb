# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"64811020","system":"multilex"},{"code":"81631020","system":"multilex"},{"code":"79897020","system":"multilex"},{"code":"81628020","system":"multilex"},{"code":"79867020","system":"multilex"},{"code":"64807020","system":"multilex"},{"code":"64797020","system":"multilex"},{"code":"57278020","system":"multilex"},{"code":"64805020","system":"multilex"},{"code":"73147020","system":"multilex"},{"code":"73132020","system":"multilex"},{"code":"96073020","system":"multilex"},{"code":"96059020","system":"multilex"},{"code":"95525020","system":"multilex"},{"code":"74008020","system":"multilex"},{"code":"56797020","system":"multilex"},{"code":"4578020","system":"multilex"},{"code":"50127020","system":"multilex"},{"code":"55619020","system":"multilex"},{"code":"96069020","system":"multilex"},{"code":"70367020","system":"multilex"},{"code":"94727020","system":"multilex"},{"code":"96061020","system":"multilex"},{"code":"73133020","system":"multilex"},{"code":"94146020","system":"multilex"},{"code":"79869020","system":"multilex"},{"code":"70488020","system":"multilex"},{"code":"73146020","system":"multilex"},{"code":"81632020","system":"multilex"},{"code":"81627020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('opioid-analgesics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["opioid-analgesics-diamorphine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["opioid-analgesics-diamorphine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["opioid-analgesics-diamorphine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
