#jac is scale-agnostic which means it can run on any scale from a single device to a large cluster without changing the code.
#Automatic persistence-jac automatically saves any data connected to the root node to disk, ensuring data durability without extra effort.
#Focus is on logic-jac abstracts away infrastructure concerns, allowing developers to concentrate on application logic rather than deployment details.
#Focus is on what the program does not how data is stored or where computation happens.

#simple jac counter saved automatically to disk

node Counter {
    has count: int = 0;
    
    def increment()->None;
}

impl Counter.increment{
    self.count+=1;
    print(f"Counter is now {self.count}");
}

with entry {
    #create or get counter
    counters=[root-->(`?Counter)];
    if not counters{
        counter=root ++> Counter();
        print("Created new counter");
            }
#increment and save automatically
counter[0].increment();
counter[0].increment();
}