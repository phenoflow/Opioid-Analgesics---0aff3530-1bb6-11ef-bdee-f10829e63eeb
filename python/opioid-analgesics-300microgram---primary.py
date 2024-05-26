# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"96301020","system":"multilex"},{"code":"96299020","system":"multilex"},{"code":"76092020","system":"multilex"},{"code":"96317020","system":"multilex"},{"code":"96305020","system":"multilex"},{"code":"96309020","system":"multilex"},{"code":"96387020","system":"multilex"},{"code":"77204020","system":"multilex"},{"code":"77203020","system":"multilex"},{"code":"96375020","system":"multilex"},{"code":"81737020","system":"multilex"},{"code":"96307020","system":"multilex"},{"code":"96379020","system":"multilex"},{"code":"96369020","system":"multilex"},{"code":"96371020","system":"multilex"},{"code":"96381020","system":"multilex"},{"code":"96315020","system":"multilex"},{"code":"81735020","system":"multilex"},{"code":"92289020","system":"multilex"},{"code":"96373020","system":"multilex"},{"code":"96297020","system":"multilex"},{"code":"96319020","system":"multilex"},{"code":"96383020","system":"multilex"},{"code":"96303020","system":"multilex"},{"code":"96311020","system":"multilex"},{"code":"76091020","system":"multilex"},{"code":"81734020","system":"multilex"},{"code":"81733020","system":"multilex"},{"code":"96377020","system":"multilex"},{"code":"96313020","system":"multilex"},{"code":"96385020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('opioid-analgesics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["opioid-analgesics-300microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["opioid-analgesics-300microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["opioid-analgesics-300microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
