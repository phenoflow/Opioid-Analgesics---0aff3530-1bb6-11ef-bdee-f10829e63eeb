# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"62538020","system":"multilex"},{"code":"54628020","system":"multilex"},{"code":"99588020","system":"multilex"},{"code":"49485020","system":"multilex"},{"code":"55276020","system":"multilex"},{"code":"55874020","system":"multilex"},{"code":"4328020","system":"multilex"},{"code":"56464020","system":"multilex"},{"code":"64806020","system":"multilex"},{"code":"65467020","system":"multilex"},{"code":"4406020","system":"multilex"},{"code":"70233020","system":"multilex"},{"code":"77920020","system":"multilex"},{"code":"75444020","system":"multilex"},{"code":"82221020","system":"multilex"},{"code":"67663020","system":"multilex"},{"code":"4311020","system":"multilex"},{"code":"72186020","system":"multilex"},{"code":"4444020","system":"multilex"},{"code":"4326020","system":"multilex"},{"code":"65481020","system":"multilex"},{"code":"49478020","system":"multilex"},{"code":"49325020","system":"multilex"},{"code":"76276020","system":"multilex"},{"code":"59950020","system":"multilex"},{"code":"68361020","system":"multilex"},{"code":"68499020","system":"multilex"},{"code":"80053020","system":"multilex"},{"code":"71985020","system":"multilex"},{"code":"76604020","system":"multilex"},{"code":"4439020","system":"multilex"},{"code":"4310020","system":"multilex"},{"code":"73826020","system":"multilex"},{"code":"4405020","system":"multilex"},{"code":"53798020","system":"multilex"},{"code":"53534020","system":"multilex"},{"code":"4339020","system":"multilex"},{"code":"55772020","system":"multilex"},{"code":"56463020","system":"multilex"},{"code":"81626020","system":"multilex"},{"code":"68487020","system":"multilex"},{"code":"66914020","system":"multilex"},{"code":"84870020","system":"multilex"},{"code":"60100020","system":"multilex"},{"code":"80054020","system":"multilex"},{"code":"49337020","system":"multilex"},{"code":"89682020","system":"multilex"},{"code":"61569020","system":"multilex"},{"code":"76338020","system":"multilex"},{"code":"4340020","system":"multilex"},{"code":"52434020","system":"multilex"},{"code":"49536020","system":"multilex"},{"code":"65994020","system":"multilex"},{"code":"71989020","system":"multilex"},{"code":"99594020","system":"multilex"},{"code":"83285020","system":"multilex"},{"code":"68504020","system":"multilex"},{"code":"4332020","system":"multilex"},{"code":"80055020","system":"multilex"},{"code":"49549020","system":"multilex"},{"code":"49539020","system":"multilex"},{"code":"49542020","system":"multilex"},{"code":"62545020","system":"multilex"},{"code":"56799020","system":"multilex"},{"code":"81634020","system":"multilex"},{"code":"4403020","system":"multilex"},{"code":"56811020","system":"multilex"},{"code":"79868020","system":"multilex"},{"code":"49432020","system":"multilex"},{"code":"96053020","system":"multilex"},{"code":"75363020","system":"multilex"},{"code":"59895020","system":"multilex"},{"code":"50522020","system":"multilex"},{"code":"4334020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('opioid-analgesics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["opioid-analgesics-300mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["opioid-analgesics-300mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["opioid-analgesics-300mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
