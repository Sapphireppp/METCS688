#install.packages('tidytext')
install.packages('syuzhet')

library('syuzhet')


sampletext1 <- c("Data mining is the process of extracting (a.k.a mining) knowledge from the data.",
"For instance, if you are given a series of words in this order: {run, eat, smoke, happy, die, live, run, drink, run, smoke, 
happy, eat, heart-attack} through data mining methods you can extract a knowledge as follows: the word 'smoke' 
is followed by the word 'happy'.",
"However, knowledge and their associations are usually more complex to get extracted by some human defined rules.",
"For instance, we encounter “die” after “smoke” too, but that is not as easily recognizable as previous example.",
"This is where computers could assist us in recognizing these patterns.", 
"In the real world problems, data are much more complex and changing rapidly.",
" Therefore, instead of defining rules to extract knowledge from data we use machine learning.")

sampletext2 <-  c("The name algorithm is a latinized name of a Persian mathematician, 
Abullah Mohammad Ibn Musa Al-Khawrazmi.", 
" He is one of demons that create tasteless algebraic methods and thus a systematic method to 
study the linear or quadratic equation [Knuth ’97] (Page 55).", 
"In simple terms, an algorithm is a series of instructions that performs a task.",
"All computer science techniques are based on algorithms. We give one or more inputs into the algorithm, system,
machine, … and it produces one or more output.") 

#--- first step make every word a row----


df <- as.vector(sampletext2)
df

nrcemotion<- get_nrc_sentiment(word.df[1])
nrcemotion
nrcemotion<- get_nrc_sentiment(word.df[2])
nrcemotion
nrcemotion<- get_nrc_sentiment(word.df[3])
nrcemotion
nrcemotion<- get_nrc_sentiment(word.df[4])
nrcemotion



#-------------------

library(syuzhet)
my_example_text <- "I begin this story with a neutral statement.  
  Basically this is a very silly test.  
  You are testing the Syuzhet package using short, inane sentences.  
  I am actually very happy today. 
  I have finally finished writing this package.  
  Tomorrow I will be very sad. 
  I won't have anything left to do. 
  I might get angry and decide to do something horrible.  
  I might destroy the entire package and start from scratch.  
  Then again, I might find it satisfying to have completed my first R package. 
  Honestly this use of the Fourier transformation is really quite elegant.  
  You might even say it's beautiful!"
s_v <- get_sentences(my_example_text)
s_v

syuzhet_vector <- get_sentiment(s_v[2], method="syuzhet")
syuzhet_vector

affin_vector <- get_sentiment(s_v[2], method="afinn")
affin_vector

nrc_vector <- get_sentiment(s_v[2], method="nrc")
nrc_vector

bing_vector <- get_sentiment(s_v[2], method="bing")
bing_vector

