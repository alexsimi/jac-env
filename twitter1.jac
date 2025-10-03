import tweepy;
import from byllm.llm { Model }

glob llm = Model(model_name="ollama/deepseek-r1:1.5b");


def post_tweet(n: int)-> None
{
    for i in range(n)
    {
        response = generate_tweet("Generate a unique tweet about the failures of SHIF health insurance policy in Kenya");
        client.create_tweet(text=response);
    }
}

def generate_tweet(prompt: str) -> str by llm();

with entry {
# Twitter API credentials
CONSUMER_KEY ="eXXxCYjrfERi6KuChUvtL4DvZ";
CONSUMER_SECRET = 'XMt5xAwgWXL8Q8TmtD9RYILOANQrM0hG4TxEaOhqh8a6NuiSe6';
ACCESS_TOKEN = '30418838-2AqYs4S266krjboBJwfVUgw2rxV3XlopQCIQ98v8O';
ACCESS_TOKEN_SECRET = 'bag87EjkCI69v4EXMb8VUcUvxmb6GF4sFbpaO8ShHU9cE';


client =tweepy.Client(
            consumer_key=CONSUMER_KEY,
            consumer_secret=CONSUMER_SECRET,
            access_token=ACCESS_TOKEN,
            access_token_secret=ACCESS_TOKEN_SECRET
        );
 post_tweet(5);   
}