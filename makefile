all: README.md

README.md: guessinggame.sh
        echo "## The Unix work bench course assignment" > README.md
        echo -n "\n**Make date**: " >> README.md
        date >> README.md
        echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
        cat -b guessinggame.sh >> README.md

clean:
        rm README.md
