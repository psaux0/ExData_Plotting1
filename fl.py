#! /usr/bin/env python3.5

def main():
    i = 0
    with open("data.txt") as f:
        for line in f:
            if line.startswith("1/2/2007"):
                j = i
                break
            else:
                i += 1
        for line in f:
            if line.startswith("3/2/2007"):
                k = i
                break
            else:
                i += 1
        print("{0} lines to be skipped and {1} to be read".format(j,k - j + 1))

if __name__ == "__main__":
    main()
