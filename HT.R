heads<-0
ntrials <-1000
pro <- vector(mode="integer", length=ntrials)
trials <- (1:ntrials)
ran <- runif(ntrials,0,1)
for(i in 1:ntrials){
if(ran[i] <0.5)
	heads=heads+1
pro[i]=heads/i
}

plot(trials,pro,type="l",ylab="P(heads)")

