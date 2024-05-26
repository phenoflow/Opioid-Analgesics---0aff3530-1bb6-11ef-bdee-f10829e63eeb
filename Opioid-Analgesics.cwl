cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  opioid-analgesics-400mg---primary:
    run: opioid-analgesics-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  opioid-analgesics-hydromorphone---primary:
    run: opioid-analgesics-hydromorphone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-400mg---primary/output
  opioid-analgesics-applicator---primary:
    run: opioid-analgesics-applicator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-hydromorphone---primary/output
  opioid-analgesics-375mg---primary:
    run: opioid-analgesics-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-applicator---primary/output
  opioid-analgesics-coproxamol---primary:
    run: opioid-analgesics-coproxamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-375mg---primary/output
  opioid-analgesics-300microgram---primary:
    run: opioid-analgesics-300microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-coproxamol---primary/output
  opioid-analgesics-tramadol---primary:
    run: opioid-analgesics-tramadol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-300microgram---primary/output
  opioid-analgesics-marol---primary:
    run: opioid-analgesics-marol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tramadol---primary/output
  opioid-analgesics-300mg---primary:
    run: opioid-analgesics-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-marol---primary/output
  opioid-analgesics-zamadol---primary:
    run: opioid-analgesics-zamadol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-300mg---primary/output
  morphgesic-opioid-analgesics---primary:
    run: morphgesic-opioid-analgesics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-zamadol---primary/output
  opioid-analgesics-250mg---primary:
    run: opioid-analgesics-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: morphgesic-opioid-analgesics---primary/output
  opioid-analgesics-methadone---primary:
    run: opioid-analgesics-methadone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-250mg---primary/output
  opioid-analgesics-pentazocine---primary:
    run: opioid-analgesics-pentazocine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-methadone---primary/output
  opioid-analgesics-120mg---primary:
    run: opioid-analgesics-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-pentazocine---primary/output
  opioid-analgesics-200mg---primary:
    run: opioid-analgesics-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-120mg---primary/output
  opioid-analgesics-1000mg---primary:
    run: opioid-analgesics-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-200mg---primary/output
  opioid-analgesics-oxycodone---primary:
    run: opioid-analgesics-oxycodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-1000mg---primary/output
  opioid-analgesics-phosphate---primary:
    run: opioid-analgesics-phosphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-oxycodone---primary/output
  opioid-analgesics-diamorphine---primary:
    run: opioid-analgesics-diamorphine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-phosphate---primary/output
  opioid-analgesics-meptid---primary:
    run: opioid-analgesics-meptid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-diamorphine---primary/output
  opioid-analgesics-150mg---primary:
    run: opioid-analgesics-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-meptid---primary/output
  opioid-analgesics-mabron---primary:
    run: opioid-analgesics-mabron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-150mg---primary/output
  opioid-analgesics-palladone---primary:
    run: opioid-analgesics-palladone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-mabron---primary/output
  opioid-analgesics-oxycontin---primary:
    run: opioid-analgesics-oxycontin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-palladone---primary/output
  opioid-analgesics-pethidine---primary:
    run: opioid-analgesics-pethidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-oxycontin---primary/output
  opioid-analgesics-lozenge---primary:
    run: opioid-analgesics-lozenge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-pethidine---primary/output
  opioid-analgesics-powder---primary:
    run: opioid-analgesics-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-lozenge---primary/output
  opioid-analgesics-morcap---primary:
    run: opioid-analgesics-morcap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-powder---primary/output
  opioid-analgesics-forte---primary:
    run: opioid-analgesics-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-morcap---primary/output
  fortral-opioid-analgesics---primary:
    run: fortral-opioid-analgesics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-forte---primary/output
  opioid-analgesics-continus---primary:
    run: opioid-analgesics-continus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: fortral-opioid-analgesics---primary/output
  opioid-analgesics-oramorph---primary:
    run: opioid-analgesics-oramorph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-continus---primary/output
  opioid-analgesics-codydramol---primary:
    run: opioid-analgesics-codydramol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-oramorph---primary/output
  opioid-analgesics-mixture---primary:
    run: opioid-analgesics-mixture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-codydramol---primary/output
  opioid-analgesics-tablet---primary:
    run: opioid-analgesics-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-mixture---primary/output
  opioid-analgesics-naloxone---primary:
    run: opioid-analgesics-naloxone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tablet---primary/output
  opioid-analgesics-tapentadol---primary:
    run: opioid-analgesics-tapentadol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-naloxone---primary/output
  opioid-analgesics-dihydrocodeine---primary:
    run: opioid-analgesics-dihydrocodeine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tapentadol---primary/output
  opioid-analgesics-dextropropoxyphene---primary:
    run: opioid-analgesics-dextropropoxyphene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-dihydrocodeine---primary/output
  opioid-analgesics-longtec---primary:
    run: opioid-analgesics-longtec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-dextropropoxyphene---primary/output
  opioid-analgesics-srmrhotard---primary:
    run: opioid-analgesics-srmrhotard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-longtec---primary/output
  opioid-analgesics-solpadol---primary:
    run: opioid-analgesics-solpadol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-srmrhotard---primary/output
  opioid-analgesics-capsule---primary:
    run: opioid-analgesics-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-solpadol---primary/output
  effervescent-opioid-analgesics---primary:
    run: effervescent-opioid-analgesics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-capsule---primary/output
  opioid-analgesics-zydol---primary:
    run: opioid-analgesics-zydol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: effervescent-opioid-analgesics---primary/output
  opioid-analgesics-suspension---primary:
    run: opioid-analgesics-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-zydol---primary/output
  opioid-analgesics-concentrated---primary:
    run: opioid-analgesics-concentrated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-suspension---primary/output
  opioid-analgesics-zomorph---primary:
    run: opioid-analgesics-zomorph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-concentrated---primary/output
  opioid-analgesics-sevredol---primary:
    run: opioid-analgesics-sevredol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-zomorph---primary/output
  opioid-analgesics-tylex---primary:
    run: opioid-analgesics-tylex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-sevredol---primary/output
  opioid-analgesics-ampoule---primary:
    run: opioid-analgesics-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tylex---primary/output
  opioid-analgesics-oxynorm---primary:
    run: opioid-analgesics-oxynorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-ampoule---primary/output
  opioid-analgesics-746mg---primary:
    run: opioid-analgesics-746mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-oxynorm---primary/output
  opioid-analgesics-tradorec---primary:
    run: opioid-analgesics-tradorec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-746mg---primary/output
  opioid-analgesics-tramacet---primary:
    run: opioid-analgesics-tramacet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tradorec---primary/output
  opioid-analgesics-df118---primary:
    run: opioid-analgesics-df118---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tramacet---primary/output
  opioid-analgesics-hydrochloride---primary:
    run: opioid-analgesics-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-df118---primary/output
  opioid-analgesics-targinact---primary:
    run: opioid-analgesics-targinact---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-hydrochloride---primary/output
  opioid-analgesics-maxitram---primary:
    run: opioid-analgesics-maxitram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-targinact---primary/output
  opioid-analgesics-sachet---primary:
    run: opioid-analgesics-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-maxitram---primary/output
  opioid-analgesics-palfium---primary:
    run: opioid-analgesics-palfium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-sachet---primary/output
  opioid-analgesics-dromadol---primary:
    run: opioid-analgesics-dromadol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-palfium---primary/output
  opioid-analgesics-100mg---primary:
    run: opioid-analgesics-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-dromadol---primary/output
  opioid-analgesics-tramquel---primary:
    run: opioid-analgesics-tramquel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-100mg---primary/output
  opioid-analgesics-zapain---primary:
    run: opioid-analgesics-zapain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tramquel---primary/output
  opioid-analgesics-elixir---primary:
    run: opioid-analgesics-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-zapain---primary/output
  opioid-analgesics-sulfate---primary:
    run: opioid-analgesics-sulfate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-elixir---primary/output
  opioid-analgesics-buprenorphine---primary:
    run: opioid-analgesics-buprenorphine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-sulfate---primary/output
  temgesic-opioid-analgesics---primary:
    run: temgesic-opioid-analgesics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-buprenorphine---primary/output
  opioid-analgesics-physeptone---primary:
    run: opioid-analgesics-physeptone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: temgesic-opioid-analgesics---primary/output
  opioid-analgesics-palexia---primary:
    run: opioid-analgesics-palexia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-physeptone---primary/output
  opioid-analgesics-caplet---primary:
    run: opioid-analgesics-caplet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-palexia---primary/output
  opioid-analgesics-solution---primary:
    run: opioid-analgesics-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-caplet---primary/output
  opioid-analgesics-soluble---primary:
    run: opioid-analgesics-soluble---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-solution---primary/output
  opioid-analgesics-liquid---primary:
    run: opioid-analgesics-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-soluble---primary/output
  opioid-analgesics-filnarine---primary:
    run: opioid-analgesics-filnarine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-liquid---primary/output
  opioid-analgesics-larapam---primary:
    run: opioid-analgesics-larapam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-filnarine---primary/output
  opioid-analgesics-tramulief---primary:
    run: opioid-analgesics-tramulief---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-larapam---primary/output
  opioid-analgesics-kapake---primary:
    run: opioid-analgesics-kapake---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-tramulief---primary/output
  opioid-analgesics-sugar---primary:
    run: opioid-analgesics-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-kapake---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: opioid-analgesics-sugar---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
