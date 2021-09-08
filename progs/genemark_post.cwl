cwlVersion: v1.2
label: "genemark_post"

class: CommandLineTool
baseCommand: genemark_post
inputs:
  abs_short_model_limit:
    type: int?
    inputBinding:
      prefix: -abs-short-model-limit
  asn_cache:
    type: Directory[]
    inputBinding:
      prefix: -asn-cache
      itemSeparator: ","
  max_overlap:
    type: int?
    inputBinding:
      prefix: -max-overlap
  max_unannotated_region:
    type: int?
    inputBinding:
      prefix: -max-unannotated-region
  nogenbank:
    type: boolean
    inputBinding:
      prefix: -nogenbank
  selenoproteins:
    type: Directory
  selenoproteins_db:
    type: string
    inputBinding:
      prefix: -selenoproteins
      valueFrom: $(inputs.selenoproteins.path)/$(inputs.selenoproteins_db)
  short_model_limit:
    type: int?
    inputBinding:
      prefix: -short-model-limit
  unicoll_sqlite:
    type: File
    inputBinding:
      prefix: -unicoll_sqlite
  models_name: 
    type: string
    default: models.asn
    inputBinding:
        prefix: -out
  out_product_ids_name: 
    type: string
    default: all-proteins.ids
    inputBinding:
      prefix: -out-product-ids
  genemark_annot: 
    type: File
    inputBinding:
      prefix: -genemark-annot
  pre_annot: # Run_GeneMark/marked_annotation
    type: File?
    inputBinding:
      prefix: -pre-annot
  product_id_prefix:
    type: string?
    inputBinding:
      prefix: -product-id-prefix
outputs:
    models:
        type: File
        outputBinding:
            glob: $(inputs.models_name)
        
