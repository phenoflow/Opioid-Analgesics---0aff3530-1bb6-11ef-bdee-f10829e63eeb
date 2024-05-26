# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"96510020","system":"multilex"},{"code":"94355020","system":"multilex"},{"code":"65703020","system":"multilex"},{"code":"54268020","system":"multilex"},{"code":"78021","system":"multilex"},{"code":"99829020","system":"multilex"},{"code":"53857020","system":"multilex"},{"code":"80790020","system":"multilex"},{"code":"54364020","system":"multilex"},{"code":"79957020","system":"multilex"},{"code":"82626020","system":"multilex"},{"code":"75454020","system":"multilex"},{"code":"90615020","system":"multilex"},{"code":"50528020","system":"multilex"},{"code":"75378020","system":"multilex"},{"code":"4502020","system":"multilex"},{"code":"83124020","system":"multilex"},{"code":"79776020","system":"multilex"},{"code":"70238020","system":"multilex"},{"code":"4527020","system":"multilex"},{"code":"79974020","system":"multilex"},{"code":"79896020","system":"multilex"},{"code":"85602020","system":"multilex"},{"code":"92194020","system":"multilex"},{"code":"68362020","system":"multilex"},{"code":"85785020","system":"multilex"},{"code":"96251020","system":"multilex"},{"code":"76472020","system":"multilex"},{"code":"96063020","system":"multilex"},{"code":"4529020","system":"multilex"},{"code":"75449020","system":"multilex"},{"code":"64810020","system":"multilex"},{"code":"93712020","system":"multilex"},{"code":"79961020","system":"multilex"},{"code":"94253020","system":"multilex"},{"code":"99819020","system":"multilex"},{"code":"88985020","system":"multilex"},{"code":"83128020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('opioid-analgesics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["opioid-analgesics-1000mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["opioid-analgesics-1000mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["opioid-analgesics-1000mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
