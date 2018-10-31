# 3G1 Example Paper 1
*Tom Lu xl402*

**1.	It has been hypothesized that the first macromolecule to evolve was RNA. What functions would it need to perform to be the sole precursor for the life we know today? What properties of RNA make it possible to perform those functions? What molecules have replaced those functions in currently living organisms?**

* It is hypothesized that RNA is the precursor of genetic information storage molecule
* In order for living systems to exist, there must be a evolution of families of molecules that could catalyze their own replication
* Polynucleotides can both **store information** and **catalyze chemical reactions**
  * They differ from polypeptides as they can directly guide the formation of their own replications
  * Through complementary base pairing of nucleotide subunits using one polynucleotide to act as a template of itself
  * Without catalysts, polymer formation is slow and error-prone. Therefore another function polynucleotides needs to perform is to be able to act as a catalyst during replication
* A RNA molecule is a polynucleotide with a sugar phosphate backbone ensuring its stability (making it a robust information storage) and bases (AUCG) that could form complimentary base pairs through hydrogen bonding
* RNA molecules are capable of self replicating through RNA replication
* RNA molecules are the catalysts for the peptidyl transferase reaction that takes place on the ribosome
* This makes RNA molecules both a information carrier and a catalyst which completes the hypothesis
* DNA molecules have replaced RNA in currently living organisms as RNA is relatively unstable due to uracil, the unmethylated form of thymine

**2.	DNA is a double stranded molecule. A copy of both strands is passed on to progeny produced asexually.**
**a.	Describe two possible configurations for distributing the two copy strands and the two original strands over the two daughter cells.**
**b.	How would you discover which configuration is implemented in nature? Consider the following tools. You can grow cells to contain exclusively 15N containing DNA or exclusively 14N containing DNA. Furthermore, you have the ability to measure the proportion of cells which have 14N, 15N, or a mixture.**

* There are three models for DNA replication: conservative, semi-conservative and dispersive
  * Conservative replication entails an exact replica of the original double stranded DNA
  * Semi conservative model entails the two new double strands contains one template strand from the original DNA and a newly formed strand
  * Dispersive model entails that the replication happens on a per section bases where the both strands in the new double strands contain some of the original and some of the new nucleosides
* Meselson and Stahl confirmed in 1952 that DNA is replicated semi-conservatively through experimentation
* Semi conservative model makes most sense as the two complementary strands of helix might separate during replication each serving as a template for the construction of a new, matching strand
* Experiment begins with growing E.coli in a medium containing only $^{15}\textrm{N}$ until all E.coli's nitrogenous bases were labeled with heavy nitrogen
* Bacteria are then switched to medium containing light $^{14}\textrm{N}$ isotope and allowed to grow for several generations
* Using density gradient centrifugation method, after each generation the content of the bacteria samples are measured
* Generation1:
  * Also produced a single band when centrifuged
  * However this band was higher, intermediate in density between the heavy $^{15}\textrm{N}$ and the light $^{14}\textrm{N}$
  * This indicates the DNA molecules made in the first round of replication was a hybrid of light and heavy DNA
  * This confirms that the replication process is either semi-conservative or dispersive
* Generation 2:
  * Produced two bands, one was in the same position as the intermediate band from the first generation
  * Second was higher (appeared to be labelled only with $^{14}\textrm{N}$
  * This confirms the semi-conservative model since if dispersive, there would never be any pure $^{14}\textrm{N}$ band forming
* The relative proportions of the $^{14}\textrm{N}$ /$^{15}\textrm{N}$ DNAs is defined as a geometric progression over the $i$th generation:
  $$
  D_{14/15}(i)= \left(\dfrac{1}{2}\right)^{i-1} \quad \forall i \geq 1
  $$

**3.	You have been given an agar plate with a very small bacterial colony, composed of only a few cells. These bacteria have been transformed with a plasmid vector containing the gene coding for the green fluorescent protein (GFP), flanked by two restriction sites, HindIII and BamHI.**
**a.	What are restriction enzymes, what is their original function in bacteria, and why are they useful in modern bioengineering? [10]**
Also termed restriction endonuclease is an enzyme that cleaves DNA into fragments at or near specific recognition sites within the molecule known as restriction sites. They are used commonly in Bioengineering to select the part of the DNA to be cloned either through molecular cloning or PCR
**b.	You are asked to carry out a DNA digestion using these two restriction enzymes (HindIII and BamHI) to isolate the gene encoding GFP, to be used in subsequent experiments. Knowing that the small colony on your agar plate will not yield enough DNA to carry out the restriction digest, how could you obtain a sufficient amount of DNA to carry out the restriction digest? [10]**
Can try to grow the colony by incubating the bacteria over a long time period. Or using PCR, it is possible to increase the number of DNA molecules from a few nanograms to a few micrograms, however this procedure is more error prone
**c.	You are also interested to study the cellular localisation of a special type of γ-tubulin from the fruit fly Drosophila melanogaster, and decide to make a chimeric DNA molecule by joining your target gene (γ-tubulin) with the reporter gene (the GFP) to make a single open reading frame. First you decide to perform a polymerase chain reaction to amplify the target gene (γ-tubulin), which is 2 kb long. Describe the reagents you should mix in your tube and what happens during each step in the thermo-cycler (the machine performing the amplification reactions). [30]**
The Polymerase chain reaction requires:
* Taq DNA polymerase which is stable under high temperature (95 degrees)
* DNA primers designed specifically for the DNA region of interest
* PCR buffers to provide the optimal condition for Taq polymerase
* Nanograms of the DNA strand that is to be replicated

During each thermo-cycle:
* Denaturation (96 degrees), DNA strands are denatured through the separation of hydrogen bonds
* Annealing (55-56 degrees), primers bind to their complementary sequences on the single strand template DNA
* Extension (72 degrees), the reaction temperature is raised so Taq polymerase extends the primers, synthesising new strands of DNA

Picture below denotes what happens to a single double stranded DNA during each thermocycle

<center>

![Screenshot 2018-10-26 at 01.57.03](/assets/Screenshot%202018-10-26%20at%2001.57.03.png)
</center>

**d.Your supervisor then informs you that he wants to use a collaborator’s strain that already expresses GFP for the study, so you have to PCR-amplify another reporter gene, a red fluorescent protein (RFP) to tag γ-tubulin. You then decide to use isothermal Gibson assembly to join your gene of interest (γ-tubulin) and the new reporter gene (RFP) in this order (γ-tubulin - RFP) to a plasmid. Describe the necessary PCR reactions, showing diagrams for each (include primers, DNA template and post-PCR fragments). [30]**

**e.	You now want to carry out the isothermal Gibson assembly to join up the γ-tubulin gene, the RFP gene and plasmid backbone. Briefly describe which reagents you have to mix, the overall protocol, what happens during the reaction, and why your primers had to be designed the way they did for the reaction to work. [20]**





**4.**
**a.	What reagents are needed to carry out a polymerase chain reaction? [20]**
(see above)
**b.	PCR can be used to fuse different DNA fragments together. Explain why it cannot be used to directly build megabase-scale DNA constructs. [20]**
Because PCR happens in-vitro, there are no error correction enzymes during the replication stage. The replication procedure done by Taq polymerase is error prone and typically has an error rate of one per 5-20 kb. Therefore it is not possible to build long chain of genes.
**c.	A PCR reaction is set up to amplify a human exon from a blood sample. When the products of the PCR reaction are separated by agarose gel electrophoresis two bands are seen: one is the expected size and the other is slightly smaller. Provide a possible explanation for this result. [25]**
See the PCR cycle illustration from above, during each stage $T$, we are expecting from a double stranded DNA molecule $N$ number of replicated target genes:
$$
N = \sum_{n=1}^T 2^n-2
$$
However, at each stage their will be two molecules per original molecule of by product, formed due to the fact that they only contain one primer. This results in another band showing in the gel electrophoresis. The amount however should be very small since they grown linearly whereas the replicated gene grows exponentially.
**d.	A PCR reaction is set up but inadvertently the researcher adds one hundredth of the correct amount of one of the primers. Describe the course of the subsequent reaction and the most likely dominant product that will be generated. [35]**
There will still be some of the human exon produced, although the yield will be 100 times lower. As soon as one of the primers run out, There will be incomplete replication shown in the sketch below. The amount of "half replicated" long chained DNA strand stays the same with the number of thermocycles as the other half cannot be replicated due to the complete lack of primer, Taq polymerase will not replicate that strand of DNA. Therefore we are expecting a very low yild of the target exon to be replicated along with some amount (slightly greater than the amount of extra primer added) of "half replicated" DNA strands.




































