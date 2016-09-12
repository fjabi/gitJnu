heads<-0
ntrials <-100

walk <- vector(mode="integer", length=ntrials)
pro_walk <- vector(mode="integer", length=(2*ntrials)+1)
trials <- (1:ntrials)
wtrials <- (-ntrials:ntrials)

for(j in 1:100){
ran <- runif(ntrials,0,1)
for(i in 1:ntrials){
if(ran[i] <0.5)
	heads=heads+1
else heads = heads-1

walk[i]=heads
pro_walk[heads+ntrials]=pro_walk[heads+ntrials]+1
}
}
pro_walk=pro_walk/(ntrials*100)

#print(pro_walk)

par(mfrow=c(2,1))
plot(trials,walk,type="l",ylab="steps")
plot(wtrials,pro_walk,type="h",xlab="steps",ylab="p(steps)")
