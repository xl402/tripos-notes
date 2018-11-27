# 3G1 Example Paper 3
*Tom Lu xl402*

**Example Questions:**
**1) Briefly outline how Sanger di-deoxy sequencing works.**
* Preparation of identical single-stranded DNA molecules:
  - Can be cloned in a plasmid vector, the resulting DNA will be double stranded so must be denatured into single strands (can be difficult to prepare plasmid DNA that is not contaminated with small quantities of bacterial DNA and RNA)
  - Can be cloned in a bacteriophage M13 vector which is specifically designed for the production of single stranded templates (remove protein coats of the phages through treating with phenol)
- Anneal a short oligonucleotide to the same position of each molecule which subsequently acts as the primer for synthesis of a new DNA strand
  ![Capture](/assets/Capture_cz0bagp3g.PNG)
- The strand synthesis reaction requires DNA polymerase enzyme, abundance of the four deoxyribonucleotide triphosphates (dNTPs-dATP, dCTP, dGTP, dTTP) and a small amount of each of four dideoxynucleotide triphosphates (ddNTPs-ddATP, ddCTPm ddGTP and ddTTP), each labeled with a different fluorescent marker
  - DNA polymerases should have the following properties:
  - High processivity (high length of polynucleotide synthesized before the polymerase terminates through natural causes)
  - Negligible or zero 3' - 5' exonuclease activity (no removal of newly added dideoxynucleotide) which could result in more long sequences than short sequences
- The polymerase does not discriminate between deoxy and dideoxynucleotides, but once incorporated, a dideoxynucleotide blocks further strand elongation as it lacks the 3'-hydroxyl group needed to form a connection with the next nucleotide.
- As normal deoxynucleotides are also present and in larger amount, the result is a set of new molecules all with different lengths each ending in a dideoxynucleotide
  ![Capture](/assets/Capture_qa2bfwej5.PNG)
- To determine the DNA sequence, the strands are sorted according to their lengths using polyacrylamide gel electrophoresis, then molecules are run past a fluorescence detector and a laser capable of discriminating the labels attached to the dideoxynucleotides
  ![Capture](/assets/Capture_wou5ad2lg.PNG)
**2) How does Illumina sequencing differ from Sanger sequencing? What are the pros
and cons of using this technology instead of Sanger sequencing?**

| Features           | Illumina                 | Sanger             |
|--------------------|--------------------------|--------------------|
| Cost               | $0.50 per kbases         | $500 per kbases    |
| Dye Type(s)        | A single fluorescent dye | Four different Dye |
| Number of max. bps | Lots                     | 100                |
| Automation         | Automated                | More labour input  |

|      | Targeted NGS                                                                                                                                   | Sanger Sequencing                                                                                                                                                            |
|------|------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Pros | Higher sequencing depth enables higher sensitivity (down to 1%)  More data produced with the same amount of input DNA  Cheaper for large bps   | Fast, cost-effective sequencing for low numbers of targets (1–20 targets)   Familiar workflow                                                                                |
| Cons | Less cost-effective for sequencing low numbers of targets (1–20 targets)   Time-consuming for sequencing low numbers of targets (1–20 targets) | Low sensitivity (limit of detection ~15–20%)   Not as cost-effective for high numbers of targets (> 20 targets)  Low scalability due to increasing sample input requirements |

**3) Briefly explain how it is possible to sequence genomes of many mega-base pairs in
length, using sequencing reads that are only 100s of bases long.**
* One can use **whole Hierarchical shotgun sequencing method**
  - Construction of a large insert library from nuclear DNA of the species of interest
  - Create an ordered array of the clone contigs (a set of overlapping DNA segments together represent a region of DNA) through _fingerprinting_
  -  A series of overlapping clones were then defined for each chromosome. Collectively these overlapping clones define the physical map of the genome
  - Each of the large insert clones is fractioned into small DNA fragments through **sonication** (uses high frequency sound waves to make random cuts in DNA molecules)
  - The fragments are cloned then sequenced and assembled using computer algorithms
  - Gaps are closed off with either direct sequencing or primers are developed to sequences bordering the troublesome region
* Or **whole genome shotgun sequencing method**
  -  Bypasses the generation of a physical map
  - DNA itself is sheared and cloned into plasmids which are then sequenced
  - Makes use of at least two clone libraries prepared with different types of vector and ensure that one of the clone libraries contains fragments that are longer than the longest repeat sequences in the genome being studied
  - Initial result is a series of **scaffolds** with each comprising a set of sequence contigs separated by sequence gaps that lie between **pair-end reads**
  - Close gaps by further sequencing the fragment

**Past exam questions**
**1 (a) Proteins that recognise specific DNA sequences are fundamental tools in Synthetic
Biology. Give three examples of such proteins and brief descriptions of their
molecular functions. [20%]**
* Restriction enzymes:
  - Enzymes that bind and cut at specific restriction sites of a DNA sequence
  - These enzymes can be used by human or biological organisms to modify DNA sequence
* Repressors:
  - These are proteins that bind to the promoters of a operon
  - They are involved in gene regulation (down regulation)
- Activator protein:
  - Such as Catabolite activator protein which makes the binding between promoter and the polymerase easier
  - Again involved in gene regulation (up regulation)

**(b) Serine-type DNA recombinases catalyse unidirectional inversion or excision of DNA
flanked by pairs of asymmetric recognition sites. Excision occurs where the
orientations of the recognition sites are aligned. Inversion occurs where the
recognition sites point towards each other. How might the essential properties of
Serine-type DNA recombinases be used to control bacterial transcription? [20%]**
**(c) Using only components from Table 1 design a genetic AND gate based on DNA
recombination. Draw a diagram to illustrate your design and explain how the gate
functions. The inputs should be arabinose and IPTG. The output should be GFP
fluorescence**
**(d) How would you expect the behavior of an AND gate based on serine DNA
recombinases to differ from an AND gate based only on transcriptional repressor
protein activity, such as LacI and AraC acting at the same promoter? [30%]**
* Once triggered, it will not be able to be reversed.
* Longer response time to the inducers


**2 a) What are the three key components of evolution by natural selection?**
* Variation (exhibit individual variation, mutation)
* Inheritance (meiosis)
* Differential survival and reproduction (gene crossing)
