# 3G1 Example Paper 2
*Tom Lu xl402*
**Antibodies are key molecules in the adaptive immune system.
(a) Sketch the structure of the basic antibody molecule, labelling the key parts.**
![antibody](/assets/antibody.gif)
**(b) Briefly explain how it is that the antibody molecule diversity observed in an individual is far higher than the number of protein-coding genes in that individual’s genome. [30%]**
* One of the major roles that B cells play in an immune response is the production of antibodies
* In the early stages of B-cell development, while still at the **B-cell progenitor state** in the bone marrow:
  * B cells randomly rearrange their **variable (V), diversity (D) and joining (J) genes** (constant region (C) codes the mechanism used to destroy antigen, normally codes for IgM class)
  * Diversity comes from the fact that there are multiple copies of the VDJ genes that can be joined together in different combinations (D+J first, then V+DJ)
* Further diversity is added to the variable region by an enzyme **deoxynucleotidyl transferase (TdT)** that adds extra nucleotides between the V, D and J regions changing the structure of the variable regions that will be produced, this process is called **juction diversity**
    * RAG (recombinant activating gene) cleaves hairpin and adds palindromic nucleotides (reads both ways 5'-3' = 3'-5')
    * TdT adds $N$ nucleotides
    * Mismatches are common, exonucleases remove unpaired nucleotides and the gaps are filled by DNA synthesis and repair machinery.
    * This process adds nucleotides that were not originally encoded in the gene

**(c) Scientists have made gene fusions between antibody genes and bacteriophage coat protein genes, which result in the antibody fusion protein being expressed on the surface of the bacteriophage.**
**(i) Outline the steps needed to isolate the antibody genes present in a rat in order to make the above library. [10%]**
* Challenge mouse with antigen
* Purify lymphocytes (B cells, mortal, HGPRT+) from spleen
* Fuse with mylenoma cells (immortal, HGPRT-)
* Select for hybridoma clones (fused cells, HGPRT+, immortal)
* Screen for antibody production against target antigen

**(ii) What key issue would you consider when designing the fusion between the
antibody gene and the coat protein gene? [10%]**
The primers used to add sticky ends during PCR should match the restriction enzymes' left over exposing strands in the question below. The primers used should be the same two for both amplifying antibody gene and the coat protein gene.
**Briefly outline the approach you might take to fuse the material generated in (i),
which contains many antibody genes, with bacteriophage vector molecules, in order
to generate an antibody fusion library. [20%]**
* Plasmids are removed from bacteriophage which serve as vectors
* A restriction enzymes is used cut open the circular plasmids. This restriction enzyme should satisfy the function that, after cutting, the left over exposing sticky ends should form complementary base pairs with the sticky ends from the fused genes described in section above.
* The sticky ends of the restriction fragments attach to each other via base pairing, forming **recombinant plasmids**
* **DNA ligase** makes the bond permanent by attaching nucleotides to each other with **phosphodiester bonds**

**Outline the steps you would take to characterise the diversity present in the final
"tight binding" population of bacteriophage. Based on the diversity observed,
comment on how you might identify the tightest binding bacteriophage in the
population. [20%]**
* The DNA within in the interacting phage is sequenced to identify the interacting proteins or protein fragments

**Assume you are a metabolic engineer working on the pathway shown in Figure 1 (in which reactions (arrows) between intermediate metabolites named A-F are catalysed by enzymes named Ex)**
**(a) You plan to introduce Enewx by transforming your host organism with a plasmid
built from your collection of parts. Draw that plasmid and explain why you chose the
parts that you did.**
The plasmid should contain a promoter (any one can be correct as long as choice is sensibly justified) followed by RBS then Enew3 then terminator. Enew3 should be used because its Km is lower than E5 meaning flux will flow to P rather than G.
**(b) Explain how you would go about designing a set of plasmids to maximise the
production of P. You can make and experiment with as many plasmids as you like, but
in your final system you must use the Enewx plasmid designed in (a) plus two additional
plasmids, each carrying one gene**
First,	it	is	likely	 that	 up	 regulating	 the	entire	 pathway	will	 help	greatly	 so
one	plasmid	should	contain	TF1	driven	by	Phigh.		We	now	have	one	plasmid
left	and	that	should	up	regulate	the	enzyme	with	the	most	control	over	the
pathway	 in	 its	 current	 state	 (with	 TF1	 and	 Enew3 overexpressed).	 	 To
determine	this,	make	a	set	of	plasmids	with	E1,	E2,	and	E4 separately	driven
by	each	of	the	set	of	constitutive	promoters	or	with	Prep.		Measure	the	 flux
through	the	pathway	at	different	expression	levels	of	each	enzyme	and	the
one	with	the	greatest	increase	in	flux	should	be	used	in	the	final	system.
**(c) Scientists have made gene fusions between antibody genes and bacteriophage
coat protein genes, which result in the antibody fusion protein being expressed on the
surface of the bacteriophage. By doing this on a large scale, with many different
antibody genes, one can generate a high diversity library. This allows screening to be
carried out, for instance by immobilising some target antigen of interest on beads,
allowing the bacteriophage library to bind the beads, and then washing away
unbound/weakly bound bacteriophage. Tightly bound bacteriophage can then be eluted
and used to infect bacteria, allowing generation of further bacteriophage with the same
binding specificities.(i) Outline the steps needed to isolate the antibody genes present in a rat in order to make the above library.**
Take blood from the rat, isolate RNA, make cDNA, PCR the antibody coding regions using antibody gene specific primers.
**(ii) What key issue would you consider when designing the fusion between the
antibody gene and the coat protein gene?**
Ensure that the gene fusion is made such that the open reading frame is continuous between the two fused genes.
**(iii) Briefly outline the approach you might take to fuse the material generated in
(i), which contains many antibody genes, with bacteriophage vector molecules, in
order to generate an antibody fusion library.**
The PCR primers used to amplify the antibody coding sequences could be terminated in restriction sites that are compatible with the gene fusion required with the bacteriophage vector. Following PCR and digestion of both the bacteriophage and PCR products with the appropriate restriction enzymes, the two could be ligated together with T4 DNA ligase, and transformed into host bacteria, which would produce the antibody fusion bacteriophage.
**(iv) The resulting library is screened with a bead-immobilised antigen and the
tightly bound bacteriophage particles eluted and used to infect further host
bacteria in order to produce more bacteriophage. The screening is repeated several
more times, each time using the bacteriophage isolated from the previous cycle of
screening. Outline the steps you would take to characterise the diversity present
in the final "tight binding" population of bacteriophage. Based on the diversity
observed, comment on how you might identify the tightest binding bacteriophage
in the population.**
Isolate bacteriophage DNA, then PCR (the variable parts of) the antibody genes, then carry out DNA sequencing on the amplified material. Align the resulting sequences to organise them into related groups (they may not be identical due to sequencing errors). Count the number of members of each group. The most abundant group is likely the tightest binding
