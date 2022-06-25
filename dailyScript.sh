#!/bin/bash

echo 'Good Morning Stevie! Todays date is: ' date +"%dd%mm%yyyy"
sleep 5

echo 'Here is the news!'
sleep 5

menu = "N - [News] - Daily Mail | T - [Tech] -  BBC Technology | B - [Buisness] - Wall Street Journal | C - [Crypto] - Nasdaq Crypto | A - [AI] - Nasdaq Artifical Intelligence | R - [Reset] - Reset Terminal | Q - [Quit]"
end = "=============================================================================="

while :
do
    read INPUT
    case $INPUT in 

    n | N)
        w3m "https://www.dailymail.co.uk/news/index.rss" -dump > dailymail.txt
        grep "<title><!" dailymail.txt | cut -c 29- | rev | cut -c 12- | rev | sed -n 2,11p
        echo $end
        echo $menu
        rm dailymail.txt
		;;
    t | T)
        w3m "http://feeds.bbci.co.uk/news/technology/rss.xml" -dump > bbc.txt
        grep "<title><!" bbc.txt | cut -c 29- | rev | cut -c 12- | rev | sed -n 2,11p
        echo $end
        echo $menu
        rm bbc.txt
        ;;
    b | B)
        w3m "https://feeds.a.dj.com/rss/WSJcomUSBusiness.xml" -dump wsj.txt
        grep "<title><!" wsj.txt | cut -c 29- | rev | cut -c 12- | rev | sed -n 2,11p
        echo $end
        echo $menu
        rm wsj.txt
        ;;
    c | C)
        w3m "https://www.nasdaq.com/feed/rssoutbound?category=Cryptocurrencies" -dump crypto.txt
        grep "<title><!" crypto.txt | cut -c 29- | rev | cut -c 12- | rev | sed -n 2,11p
        echo $end
        echo $menu
        rm crypto.txt
        ;;
    a | A)
        w3m "https://www.nasdaq.com/feed/rssoutbound?category=Artificial+Intelligence" -dump ai.txt
        grep "<title><!" ai.txt | cut -c 29- | rev | cut -c 12- | rev | sed -n 2,11p
        echo $end
        echo $menu
        rm ai.txt
        ;;
    c | C)
        clear
        echo $menu
        ;;
    q | Q)
        break
        ;;
    *)
        echo "N - [News] - Daily Mail | T - [Tech] -  BBC Technology | B - [Buisness] - Wall Street Journal | C - [Crypto] - Nasdaq Crypto | A - [AI] - Nasdaq Artifical Intelligence | Q - [Quit]"
        ;;
    esac
done

clear

echo "What are we working on today?"
workmenu = "C - [C] | P - [Python] | R - [React] | N - [Node] | A - [Artifical Intelligence | J - [Java] | B - [Bash] | Q - [Quit]"

while :
do 
    read INPUT
    case $INPUT in

    c | C)
        cd 
        cd /Users/stevie/Developer/C/
        code .
    ;;
    p | P)
        cd 
        cd /Users/stevie/Developer/Python/
        code .
    ;;
    r | R)
        cd 
        cd /Users/stevie/Developer/JavaScript/React/
        code .
    ;;
    n | N)
        cd 
        cd /Users/stevie/Developer/JavaScript/Node/
        code .
    ;;
    a | A)
        cd 
        cd /Users/stevie/Developer/Python/Tensorflow/
        code .
    ;;
    j | J)
        cd 
        cd /Users/stevie/Developer/Java/
        code .
    ;;
    b | B)
        cd 
        cd /Users/stevie/Developer/Bash/
        code .
    ;;
    q | Q)
        break
    ;;
    *)
        echo = "C - [C] | P - [Python] | R - [React] | N - [Node] | A - [Artifical Intelligence | J - [Java] | B - [Bash]"
    ;;
    esac
done

clear

echo "Happy Hacking!"
