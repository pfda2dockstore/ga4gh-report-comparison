baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: ga4gh-report-comparison
inputs:
  comparison_method_1:
    default: hap.py
    doc: Comparison method label for first result
    inputBinding:
      position: 2
      prefix: --comparison_method_1
    type: string
  comparison_method_2:
    default: hap.py
    doc: Comparison method label for second result
    inputBinding:
      position: 5
      prefix: --comparison_method_2
    type: string
  method_1:
    default: Method 1
    doc: Label for first result
    inputBinding:
      position: 1
      prefix: --method_1
    type: string
  method_2:
    default: Method 2
    doc: Label for second result
    inputBinding:
      position: 4
      prefix: --method_2
    type: string
  result_1:
    doc: output.tar.gz file with full results from hap.py comparison
    inputBinding:
      position: 3
      prefix: --result_1
    type: File
  result_2:
    doc: output.tar.gz file with full results from hap.py comparison
    inputBinding:
      position: 6
      prefix: --result_2
    type: File
label: GA4GH Result Comparison
outputs:
  report_html:
    doc: The resulting report
    outputBinding:
      glob: report_html/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/ga4gh-report-comparison:7
s:author:
  class: s:Person
  s:name: Peter Krusche
