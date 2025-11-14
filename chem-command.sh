CC(=O)O
C(=O)O
C=CC(=O)O

#wine format
#Lhasa Limited. (2008). Meteor Nexus. Lhasa Limited. 
wine c:\\path\\to\\your\\Meteor nexus

#biotransformer https://biotransformer.ca/new
#Djoumbou-Feunang, Y., Fiamoncini, J., Gil-de-la-Fuente, A., Manach, C., Greiner, R., & Wishart, D. S. (2019). BioTransformer: a comprehensive computational tool for small molecule metabolism prediction and metabolite identification. Journal of Cheminformatics, 11(1), 2. https://doi.org/10.1186/s13321-018-0324-5. 
open -a safari https://biotransformer.ca/new
CC(=O)O,C(=O)O,C=CC(=O)O

#EPA https://qed.epa.gov/cts/chemspec/input/
#error
curl -X POST -d "Initial_SMILES=CC(=O)O" https://qed.epa.gov/cts/chemspec/input/

