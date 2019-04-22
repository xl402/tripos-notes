# 3G3 Exp 3 Learning and Memory
**2. Design an experiment in which you can pharmacologically block the function of a non-receptor protein and use behavioral assays that would support the role of LTP in learning.**
- Type of protein that is aimed to block is NMDA as it is associated in the spatial learning in the hippocampus (in some of the prefrontal pathway)
- A platform is submerged in an opaque liquid in a circular tank *Morris water maze*, to avoid remaining in water, the mice need to find the platform using spatial cues on the walls surrounding the tank, and then climb onto the platform.
- Mice that lack the NMDA receptor in CA1 pyramidal neurons have impaired spatial memory
- Their are many pathways for learning, it is difficult to lock down on a specific pathway
- Record in different locations
**3. In classical conditioning, sometimes the amount of conditioned response depends not only on the number of times the CS has been presented together and without the US, but also on the number of times the US has been presented in the absence of the CS. Can this be explained by the Rescorla-Wagner rule? If it can, explain how.**

- US can be the smell of food, CS can be the bell
- In theory since in Rescorla-Wagner model's weight update rule states $$\bm{w} \rightarrow \bm{w} + \bm{\epsilon}\delta \bm{u} \quad \text{with} \quad \delta = r-v$$ if there is no CS hence $\bm{u} = \bm{0}$, therefore $\bm{w}$ should not be changed
- However, since in reality, $\bm{u}$ is never $\bm{0}$ as there will always be some stimulus, therefore $\bm{w}$ gets globally amplified, not the learning rate $\bm{\epsilon}$ (i.e. strength of association of the stimulus to US) plays an important role, i.e. the amount of each weight update $w_i$ depends on $\epsilon_i$
- This is somehow intuitive and corresponds to some biological behaviors.


**4. What aspects of the activity of dopaminergic cells does the Rescorla-Wagner rule explain, and what aspects does it fail to capture?**
- Rescorla-Wagner rule explains a lot of activity of dopaminergic cells following classical conditioning, such as acquisition and extinction, partial reinforcement, blocking, inhibition and overshadowing
- The equivalence of activity of dopaminergic cells and the Rescorla-Wagner rule is the prediction error term $$\delta = r - v$$
- This term enables feedback performing weight updates (strength of connection of synapses between stimulus receptors and output)
- However, it does not encapsulates the **time dependence** of dopaminergic cell activities, which plays an important role in **secondary conditioning**, i.e. associating a stimulus with another:  $$\text{pre-train} \quad s_1 \rightarrow r \quad \text{train:}\;\;s_2\rightarrow s_1 \quad \text{results:}\;\; s_2\rightarrow  r'$$

**5.Describe the main differences between the Rescorla-Wagner and temporal-difference theories of classical conditioning. In your answer address the following points:**
**a)  How do these theories handle time, how do the different key quantities (CS, US, predictions, prediction weights and errors)?**
**(b) What are the quantities that animals are trying to predict according to these theories?**

- In Rescorla-Wagner model, everything is independent of time, i.e. $$v = \bm{w}^T\bm{u}$$ $$\bm{w} \rightarrow \bm{w} + \bm{\epsilon}\delta \bm{u} \quad \text{with} \quad \delta = r-v$$
- It only cares to minimize the expected reward (US) at the current time step: $$w* = {\arg \min}_w  \langle (r-v)^2 \rangle$$
- In Temporal-difference model, it treats all quantities as time varying functions, i.e. $u(t), v(t), w(t)$
- It also aims to predict the total future reward expected from current time onward, i.e.: $$v(t) = \left\langle \sum_{\tau=0}^{T-t} r(t+\tau)\right\rangle$$
- This better matches to psychological and neurobiological data and suggests how animals might use their predictions to optimize behavior when rewards are **delayed**

**(c) Which theory involves an element of bootstrapping, what kind of bootstrapping is it, and why is it necessary in the theory?**
- For temporal-difference model, bootstrapping is required in order to calculated the prediction error $\delta(t)$.
- Here $\delta(t)$ is the difference between **actual total reward from time $t$ and the predicted total reward**: $$\delta(t) = \sum_{\tau=t}^{T} r(\tau) - v(t)$$
- However, in order to get $\delta(t)$, we need to evaluate $r(t)$ until the end of the trial $t=T$ which is not feasible (what is $r(t+1), r(t+2),...$?), a workaround is to say: $$\sum_{\tau=t}^Tr(\tau) \approx r(t) + v(t+1)$$
- i.e. replace all the **unseen/unmeasured actual future reward with predicted total future reward** (we 'watered-down' our ground truth with our prediction)
- This kind of watered down weight update is called the **temporal difference rule**:$$w(\tau) \rightarrow w(\tau) + \epsilon \delta(t)u(t-\tau) \quad \text{with} \quad \delta(t)=r(t) + v(t+1) - v(t) $$

**(d) What are the predictions these theories make about what happens in secondary conditioning?**
- For the Rescorla-Wegner model, since on presentation of the second stimulus $s_2$, there are no rewards, therefore $w_2 \rightarrow w_2 + 0$, we initialize $w_2$ to be zero, the result is that $w_2$ stays zero, model cannot associate $s_2$ with $s_1$
- For temporal-difference model however, $\delta(t)$ is the difference between total reward (to some time in future) and the predicted total reward, which on presentation of $s_2$ which proceeds $s_1$ will not be zero (as $s_1$ predicts reward directly).
- Hence after training, presentation of $s_2$ will also trigger an action.


**Coarse coding**
- Involves large and overlapping receptive fields for adjacent space
- Allows a single location to be coded by activity of multiple neurons
- Allows precise point to be determined better than by having the same number of non-overlapping receptive fields
- Good trade off between accuracy and resolution

**Local coding**
- Makes the discrimination of stimuli easy, but require a large number of neurons
- Particularly when the dimensions of the coded location is large

**Intensity coding**
- Require few neurons to encode each location
- Neurons code for different firing rates
- Are more sensitive to noise and make it hard to represent multiple stimuli

**Labelled line codes**
- Receptors and initial neural channels for different senses are independent in the axon that initially carry the signal
- Each sensory neuron responds to only one modality
- We can therefore label each sensory neuron with the modality it codes

**Multisensory integration**
- Can be used to bring a stimulus above threshold when each would individually be below threshold
- Reduce the variance of a sensory estimate that arise through processes such as noise
- Enhancement is related to three features of the stimuli
  - The two stimuli must be co-localised in space
  - They must occur synchronously for maximum enhancement
  - Enhancement show inverse effectiveness with greater enhancement for weaker stimului
  - $w = \sigma_h^2 / (\sigma_v^2 + \sigma_h^2)$
  - $\hat{x} = wx_v + (1-w)x_h$

**Drift diffusion model for perceptual decision making**
- Assumes that decisions in a 2AFC task are made when a devision variable reaches one of two decision bounds
- During the trial, the decision variable performs a biased random walk
- The bias, also called the drift scales with the strength of the stimulus and controls how often and how quickly the decision variable reaches either of decision bounds
- The noise in the random walk accounts for variability in the reaction times
- The model aims at reproducing the prbabilities of the subject;s choices as well as the distribution of reaction times
- $dx = \mu dt+ \sigma dW$
- In lateral intraparietal area of monkeys support their interpretation as neural correlates of the decision variable in the drift-diffision model
  - While the monkey is viewing random dot kinematograms, some neurons in the lateral intraparietal area increase their firing rate with a rate that increases with the coherence of the random dot kinematogram (similar to the drift-diffusion model)
  - When the time courses of the firing rate for different coherences are temporally aligned to the time of the behavioral response, all firing rate curves increase up to a similar firing rate, suggesting that a decision is made when the firig rate reaches a decision bound


**Mechanisms which sustain the resting potential of a neuron**
- At rest neurons has channels permeable to both sodium and potassium ions
- Sodium is concentrated outside the cell and potassium within the cell
- Resting potential reflects a dynamic balance between the diffusion of ions under conc gradient which is opposed by a electromotive force in opposite direction
- Resting potential closer to the reversal potential for potassium as the conductance is higher
- An ATP driven Na-K pump maintains the conc gradient in long term

**How permeability of the cell mrmbrane for sodium and potassium ions affect the reversal potentials for these ions and resting potentials of the cell**
- Reversal potential independent of membrane permeability to these ions, as it is determined by the equilibrium of the osmotic and electric flux of the given ion across the membrane. Fluxes are proportional to membrane permeability, hence the independency
- Resting potential is determined by an equilibrium of different currents, which scale with respective permeabilities. Therefore, resting potential is determined by relative degree of permability for sodium and potassium

**Hyperkalemia- explain what happens to neural resing potential and generation of action potentials in response to rising extracellular potassium concentration**
- Resting potential closer to reversal potential for potassium as the conductance is higher
- Due to nernst equation, reversal potential of K increases as conc outside increases
- Hence resting potential also increases
- Slowly increase of extracellular potassium concentration causes sodium channels to open and quickly inactivate
- The number of sodium channels that can be opened gradually decreases with increasing extracellular potassium concentrations
- Because potassium channels do not inactivate, the number of open potassium channels gradually increases
- The cell is therefore slowly driven into a state that resembles that during refractory period
- Increasingly difficult to trigger action potential


**Cellular molecular events during synaptic transmission**
- In all types, the presynaptic action potential travels down the axon of the presynaptic cell and arrives at the presynaptic terminal
- The presyn membrane becomes depolarised, voltage gated Ca2+ channels open, Ca2+ inflyx into the presun cell, presun vesicles fuse with the presyn membrane and release their neurotransmitter content.
- Neurotransmitter molecules diffuse across the synaptic cleft and bind to receptors in the postsynaptic membrane
- As a result of the binding, ion channels will open in the postsynaptic membrane
- Different cases differ in the kind of ions that enter or leave the postsynaptic cell through the channel opened by transmitter-receptor binding:
  - For excitatory presynaptic cells, ions have reversal potential above the resting membrane potential, such as Na+ or Ca2+
  - As a result, either positive ions enter the postsyn cell or negative ions leave it, so becomes depolarised resulting in EPSP
  - Neuraltransmitter could be glutamate
  - For inhibitatory presunaptic cells, ions have reversal potential below resting membrane potential, such as K+ or Cl-
  - Hence either negative ions enter the postsyn cell or positive ions leave it, hence IPSP
  - Neuraltransmitter could be GABA

**Channel mechanisms which give rise to absolute and relative refractory periods**
- Absolute refractory period is the interval aftrer an action potential during which a second action potential absolutely cannot be initiated
- Caused by the closure and inactivation of the sodium channels that originally opened to deplolarize the membrane
- The h gate remains closed until membrane replolarizes, after which they regain their ability to open in response to stimulus
- Relative refractory period is the interval following the abs refractory period
- Initiation of a second action potential is inhibited but not impossible
- Caused by the residual opening of K channels that make it harder to depolarize the membrane

**Describe how voltage spreads in time in the three main parts of a neuron following the generation of an action potential at cell body**
- Action potential appears as a large and rapid peak in the membrane potential at the site of its generation, then soma followed by smaller and slower hyperpolarization
- This signal propagates smoothly along the axon as a travelling wave, such that roughly the same waveform appears at increasingly larger delays at successive points along the axon
- Similar spreading of the action potential occurs in an active dendrite from the soma towards the tips of the dendrite
- In passive dendrite, originally peaky wave form quickly becomes smeared out such that successive points along the dendrite we see increasingly delayed and elongated responses with decreasing amplitude

**Dopamine cell activity before and after classical conditioning**
- Before Phase 1, dopamine cells at the presentation of the US
- During phase 1, dopamine cells gradually shift their firing to the time of CS1 presentation
- After training, dopamine cells fire at the presentation of CS1


**GABAergic transmission**
- GABA-A act directly by opening a chloride channel
  - Cl- is negatively charged and its concentration is much higher outside than inside the cell
  - Thus when Cl- channel opens, Cl- enters the cell hyperpolarising the membrane potential of the postsynaptic cell
- GABA-B receptors are metabotropic that result in the opening of potassium channels via a G-protein mediated cascade
  - K+ is positively charged ion and its concentration is much higher inside than outside the cell
  - Thus when K+ channel of the GABA -B receptor opens K+ leaves the cell hyperpolarising it
  - As a consequence, GABA-B also hyperpolarises the postsynaptic cell, but this effect is mediated by K+ rather than Cl- ions
  - As it is metabotropic its effect is slower acting than GABA-A

**Alternative reason for larger EPSPs in CA1 due to exploration**
- Active exploration raises the temperature of the animals, thus leading to larger EPSPs without actual synaptic plasticity
- In a control experiment animals could be gently heated up while they are still and show that EPSPs are increased after this
- Thus demonstrating exploration is not necessary for larger EPSPs
- Another control experiment could keep animals head at fixed temperature while they are exploring the environment, and show that in this case there is no change in the size of EPSPs

**Advantages and disadvanrages for fast and slow learning rate**
- Fast learning makes the response on a trial be very close to the reward on previous trial
- Means it makes the response either 0 or 1, and also that it tracks changes in reward rapidly
- Slow learning makes the reponse hover around the average reward experienced over a number of previous trials
- This makes the response graded and tracking changes in reward more slowly
- Fast learning better for rapidly changing deterministic environments
- Slow learning advantageous for more stationary, stochastic environment 

**Differences between RW and TD theories for classical conditioning**
- RW only considers time in terms of subsequent trials while TD also considers within trial time
- In RW there is a single value for the level of each CS and the amount of US in a trial
- In TD all these  quantities vary as functions of discrete time within a trial
- Predictions of the animal and thus prediction weights and prediction errors are also quantified by a single scalar per trial in RW
- In TD this is a time varying function
- In RW the quantity predicted by the animal is the amount of US appearing at the end of the trial, in TD it is the cumulative amount of US appearing from a given time point until the end of the trial
- In TD bootstrapping is required, as predictions of this total amount of US need to be made at every time point within the trial, while the true total amount of US can only be know at the end of the trial
