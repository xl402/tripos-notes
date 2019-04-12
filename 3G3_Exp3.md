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
