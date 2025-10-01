#Object spatial programming(OSP)
# This is built on three core concepts:
# 1. Nodes: Represent entities or objects in the system.    
# 2. Edges: Define relationships or connections between nodes.
# 3. Walkers: Agents that traverse the graph, performing actions or computations.
# This paradigm allows for a more intuitive and flexible way to model complex systems,
# making it easier to visualize and manipulate data and interactions.
# Example: Social Network

#Nodes Data with location
node User {
    has username: str;
    has email: str;
    has created_at: str;
}

node Post {
    has title: str;
    has content: str;
    has likes: int = 0;
}

with entry{
    # This is where your program starts.
    # We will create the nodes in the graph here.
    user = root ++> User(
        username="alice",
        email="alice@gmail.com",
        created_at="2024-01-01"
        );
        
    post = user ++> Post(
        title="Hello Jac!",
        content="My first post in Jac"
    );

    print(f"User {user[0].username} with email: {user[0].email} created post: {post[0].title}");
    print(f"Post content: {post[0].content}");      
        
        }
