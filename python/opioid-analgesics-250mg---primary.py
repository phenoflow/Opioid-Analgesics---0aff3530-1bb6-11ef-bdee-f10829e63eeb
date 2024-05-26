# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"75279020","system":"multilex"},{"code":"83119020","system":"multilex"},{"code":"83127020","system":"multilex"},{"code":"50251020","system":"multilex"},{"code":"71386020","system":"multilex"},{"code":"83123020","system":"multilex"},{"code":"56511020","system":"multilex"},{"code":"85601020","system":"multilex"},{"code":"60506020","system":"multilex"},{"code":"51618020","system":"multilex"},{"code":"4524020","system":"multilex"},{"code":"59495020","system":"multilex"},{"code":"75786020","system":"multilex"},{"code":"99835020","system":"multilex"},{"code":"99801020","system":"multilex"},{"code":"61111020","system":"multilex"},{"code":"53468020","system":"multilex"},{"code":"59770020","system":"multilex"},{"code":"99825020","system":"multilex"},{"code":"93850020","system":"multilex"},{"code":"68881020","system":"multilex"},{"code":"57153020","system":"multilex"},{"code":"99817020","system":"multilex"},{"code":"69167020","system":"multilex"},{"code":"60117020","system":"multilex"},{"code":"96508020","system":"multilex"},{"code":"99813020","system":"multilex"},{"code":"69171020","system":"multilex"},{"code":"75791020","system":"multilex"},{"code":"46333020","system":"multilex"},{"code":"39814020","system":"multilex"},{"code":"82134020","system":"multilex"},{"code":"93848020","system":"multilex"},{"code":"74010020","system":"multilex"},{"code":"87129020","system":"multilex"},{"code":"93710020","system":"multilex"},{"code":"73519020","system":"multilex"},{"code":"99827020","system":"multilex"},{"code":"4490020","system":"multilex"},{"code":"87131020","system":"multilex"},{"code":"79973020","system":"multilex"},{"code":"57229020","system":"multilex"},{"code":"94823020","system":"multilex"},{"code":"52621020","system":"multilex"},{"code":"61634020","system":"multilex"},{"code":"66344020","system":"multilex"},{"code":"77140020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('opioid-analgesics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["opioid-analgesics-250mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["opioid-analgesics-250mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["opioid-analgesics-250mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
