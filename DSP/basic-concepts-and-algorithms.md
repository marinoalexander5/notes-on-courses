## Sampling Theorem

We can build a signal by a linear combination of sinc functions shifted and scaled by the values of a discrete sequence.

![](2021-05-27-21-19-58.png)

![](2021-05-27-21-22-56.png)

Digital signals are easier to handle than analog signals for:
- Storage
- Processing
- Transmission


## Transmitting analog signals

Analog signals during transmission process suffer from **Gain reduction** and **Noise**.

![](2021-05-27-21-30-54.png)

Adding **Gain** back to the signal to get back the original amplitude the noise is amplified as well in the same magnitude **G**

![](2021-05-27-21-33-02.png)

For long channels (overseas transmission) the process repeats as many times as you split your transmission: 

![](2021-05-27-21-34-58.png)


## Transmitting digital signals

At the end of the transmission line there is a threshold detector. This operator reconstructs the signal (0s and 1s) eliminating the noise induced.

![](2021-05-27-21-37-13.png)

Original signal:

![](2021-05-27-21-40-48.png)

Signal after noise is summed along the line:

![](2021-05-27-21-41-31.png)

Digital signal with added **Gain** to undo amplitude loss:

![](2021-05-27-21-42-54.png)

Output signal with a threshold that sets to 5V every value > 0 and to -5V every value < 0.

![](2021-05-27-21-44-01.png)



***
## Summary
### Discretization of time:
- samples replace idealized models
- simple math replaces calculus

### Discretization of values
- general-purpose storage
- general-purpose processing (CPU)
- noise can be controlled
 
---

 # Discrete time signals

## Delta Dirac

![](2021-05-27-23-51-52.png)

## Unit Step

![](2021-05-27-23-53-32.png)

## Exponential Decay

![](2021-05-27-23-54-36.png)

## Sinusoid

![](2021-05-27-23-57-34.png)

***
## Four signal classes:
- Finite-length
- Infinite-length
- Periodic
- Finite-support

### Finite-length
![](2021-05-28-00-04-08.png)

### Infinite-length
![](2021-05-28-00-08-43.png)

### Periodic
![](2021-05-28-00-06-56.png)

### Finite-support
![](2021-05-28-00-09-47.png)

## Elementary Operators:

![](2021-05-28-00-10-42.png)

## Energy and Power:

![](2021-05-28-00-13-44.png)