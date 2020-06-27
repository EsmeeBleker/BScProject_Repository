library("deBif")


#The model
Development <- function(t, state, parms) {
  with(as.list(c(state,parms)), {
    
    fR = a*q*R
    gR = sigmac * fR - Tc
    hR = (1-e) * sigmac *fR - (1 + d) * Tc
    xR = a/q * R
    yR = sigmac * xR - Tc
    
    dRdt <- delta * (Rmax - R) - fR * (Ca + Ia) - xR * Cj
    dCadt <- max(yR, 0) * Cj - muc * Ca - i * Ca * Ia
    dIadt <- i * Ca * Ia - muc * Ia
    dCjdt <- betac * max(gR, 0) * Ca + betac * max(hR, 0) * Ia - muc * Cj - max(yR, 0) * Cj
    derivatives <- list(c(dRdt, dCjdt, dCadt, dIadt))
    
    return(derivatives)
  })
}

#Variables and parameters
delta = 0.5; Rmax = 400; q = 1; a = 0.2; sigmac = 0.5; Tc = 1.8; muc = 0.1; betac = 1.5; e = 0.25; d = 0; i = 0.1
parms = c(i = i, e = e, q = q, d = d, betac = betac, muc = muc, Tc = Tc, sigmac = sigmac, a = a, Rmax = Rmax, delta = delta)
initialR <- 1
initialCj <- 1
initialCa <- 1
initialIa <- 1
state <- c(R = initialR, Cj = initialCj, Ca = initialCa, Ia = initialIa)

#Bifurcation
bifurcation(Development, state, parms)
