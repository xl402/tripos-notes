# 3G1 Molecular Engineering Exam Questions[^1]
[^1]:Created by: Tom Xiaoding  Lu on 10/04/19

1. (2014)
- Structure of DNA:
  - With monomer of nucleotides (pentose sugar + bases + phosphate), also termed nucleoside-triphosphate
  - Physically has a double helical structure consisting of major grooves and minor grooves
  - Two strands of DNA are pointing opposite each other chemically, 5'forward end to 3'reverse end
  - Bases are two large purines (Guanine and adenosine) and two small pyrimidines (cytosine and thymine)
  - The bases bond with each other via hydrogen bonds
- Generic monomers for RNA and proteins
  - RNA: Pentose sugar (with a hydrogen group on one of the carbons instead of the hydroxyl group), connected to a triphosphate group and one of the RNA bases (AUCG)
  - Proteins: monomer is amino acid
    - N terminus: basic, amino group
    - C terminus: acidic carboxyl group
    - With central carbon connected to a side R group such as Lysine, arginine, etc (20 different types)
- Different levels of protein structure hierarchy:
  - Primary structure:
    - The three dimensional arrangement of atoms in an amino acid-chain molecule
    - Different amino acids link with each other forming peptide bonds (via dehydration reaction)
  - Secondary structure:
    - Within the long protein chains there are regions in which the chains are organised into alpha hilicies and beta pleated sheets
    - Governed by hydrogen bonds formed between peptide chains
    - In alpha helix, the protein chain is coiled like a spring, alpha meaning looking down the length of such coil the coiling appears in a clockwise direction. All the R groups stick out of the helix, also for each complete turn of the spiral there are on average 3.6 amino acid residues in it
    - In beta pleated sheets, the chains are folded so they lie alongside each other. A beta strand is a polypeptide chain typically 3-10 amino acids long
  - Tertiary structure of proteins describe the way the whole chain folds itself into the final 3D shapes
  - Quaternary structure is the number and arrangement of multiple folded protein subunits in a multisubunit complex, such as the four subunits in hemoglobin
- Describe three distinc types of property of amino acid side chains
  - Some sidechains such as Leucine and isoleucine are hydrophobic
  - Lysine and arginine are basic and tend to bond well with nucleic acid, hence they are used a lot by binding proteins
  - Cystenine has hydroxyl groups so it can bind with a phosphate ion, used by kinase enzymes used to switch proteins on and off
- **Metabolic control analysis:**
  - Increase each enzyme in small increments and measure the resultant change in flux through the pathway
  - This gives the control coefficients for enzymes involved
  - Then we should aim to manipulate the levels of those enzymes with the highest control coefficients. However, it is likely that control would be shared. This means the best strategy would probably be to increase the levels of all of the enzymes comprising the parts of the pathway through which the greatest flux is desired

2.
- It may be observed that after supplying grand fir with GPP, limonene is produced after lysing the cells and put the content through GCMS
- Gene cloning via forming recombinant plasmids which has its lacZ region replaced with the gene which codes for this enzyme, make E Coli uptake this plasmid and allow for it to reproduce. Now when both lactose and GPP are present, the modified E coli will be able to produce enzumes which break down GPP into limonene
- If flux is diverted away from IPP by the heterologous pathway that produces limonene, cellular processes that require IPP may be inhibited, which may result in slow growth and therefore a reduction of overall yield. In addition, enzymes that convert IPP into other require products would divert flux away from the limonene pathway.

3.
**Sanger Chain termination sequencing**
- Based on the principle that single-stranded DNA molecules which differ in length by just a single nucleotide can be separated by gel electrophoresis
- Prepare identical single stranded DNA molecules through PCR or genetic cloning. Resulting DNA strand must then be denatured into single strands
- Anneal a short oligonucleotide to the same position of each molecule which subsequently acts as the primer for synthesis of a new DNS strand
- The strand synthesis reaction requires DNA polymerase enzyme, abundance of the four deoxyribonucleotide triphosphates and a small amount of each of four dideoxynucleotide triphosphates (ddATP, ddCTP, etc) each labelled with a flourscent marker
  - DNA polymerases should have high processivity (high length of polynucleotide syunthesized before the polymerase terminates through natural causes)
  - Negligible or zero 3'to 5'Activity
- Polymerase does not discriminate between dNTPs and ddNTPs, hence once ddNTPs are incorporated, a ddNTP blocks further strand elongation as it lacks the 3'hyfroxyl group needed to form a connection with the next nucleotide
- As normal deoxynucleotides are also present in large amount, the result is a set of new molecules all with different length each ending in a ddNTP
- To determine the DNA sequence, the strands are sorted according to their lengths using polyacrylamide gel electrophoresis, then molecules are run past a fluorescence detector.


**Advantages of single molecule real-time system operate directly on single DNA molecules**
- Simpler template preparation as there is no need to add generic sequences at either end of the template molecules
- Reduced bias due to not requiring amplification steps
- The possibility of longer reads because there is no need to keep multiple template molecules reacting in synchrony
- Ability to read through longer repeats due to relatively long reads compared with Illumina

**Reason for different values in scoring matrix for dynamic programming in gene alignment**
- Need to consider the base frequency in the genomes
- If the genome is rich in Gs but poos in Ts, an alignment of two Gs is less significant than an alignment of two Ts
- And the tendency for some mutations are more common than others, C-T mutations may be more common so that T/C mismatches carry less of penalty than other mismatches


**2015 Q1!**
**Producing monoclonal antibodies:**
- Challenge mouse with antigen
- Purify lymphocytes (B cells, mortal, HGPRT+) from spleen
- Fuse with mylenoma cells (immortal, HGPRT-)
- Select for hybridoma clones (fused cells, HGPRT+, immortal)
- OR:
  - Take blood from spleen of the rat
  - Isolate RNA
  - Make cDNA using Reverse transcriptases
  - PCR the antibody coding regions
