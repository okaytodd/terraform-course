Let's Discuss Stateful Storage

Every project has an issues list somewhere. Kubernetes and all the related projects are no different. With all of this volume of information available about what is or isn't being developed, wish lists, bugs, and other things it is hard to keep track of what is or isn't done! That leads me to the next question, which is what this whole blog post will be about. ***What is the state of storage; stateful, ephemeral, or otherwise when it comes to container based technology?***

First off, let's delve into a little context so we make sure we're all on the same topic here. When I write stateful, I mean this in the most rudimentary of ways. Simply that a storage mechanism can be trusted like one could trust a hard drive one writes data to, and can retrieve data from. Maybe even more trustworthy then that, but either way, this is what stateful means in the context in which I use the term.

Ephemeral storage is storage that may or may not exist after a reboot, or shifting of assets within an environment of containers like Kubernetes. It can only be trusted to be available for a finite set of time in an environment, usually for a singular purpose. Almost all containers, and even some virtual machine environments, promise no more than an ephemeral storage capability.

With that context, one can easily imagine that having stateful storage is paramount to doing much of anything with important data. Storing it on a path or running a database that would store the data for you. No matter the case, one would want to be able to trust that the data would be available upon a simple reboot or something.

The Problems

Much of the container landscape; Docker, Kubernetes, etc, don't specifically promise except through tertiary management of storage any type of trusted storage mechanisms. Of course, Kubernetes doesn't really do storage itself at all, it's the mechanisms that run within and without Kubernetes that actually manage this. So how does one manage reliable, trustworthy, stateful data storage?

The Solutions



Kasten ??

https://blog.openshift.com/kubernetes-state-storage/

https://stackoverflow.com/questions/41732819/why-statefulsets-cant-a-stateless-pod-use-persistent-volumes/41733207

https://kubernetes.io/docs/tutorials/stateful-application/basic-stateful-set/

https://cloud.google.com/kubernetes-engine/docs/how-to/stateful-apps

https://opensource.com/article/17/2/stateful-applications

- > https://thenewstack.io/strategies-running-stateful-applications-kubernetes-volumes/
- > https://thenewstack.io/kubernetes-brings-new-persistent-storage-options-containers/