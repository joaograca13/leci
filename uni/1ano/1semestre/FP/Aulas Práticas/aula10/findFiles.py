import os

def printDirFiles(d):
    lst = os.listdir(d)
    for fname in lst:
        path = os.path.join(d, fname)
        if os.path.isfile(path):
            ftype = "FILE"
        elif os.path.isdir(path):
            ftype = "DIR"
        else:
            ftype = "?"
        print(ftype, path)
    return


def findFiles(d, ext):
    # Complete...
    lst = os.listdir(d)
    match_lst = []
    for fname in lst:
        path = os.path.join(d, fname)
        if os.path.isfile(path):
            
            filename, file_extension = os.path.splitext(d)
            if file_extension == '.py':
                match_lst.append(path)
        elif os.path.isdir(path):
            match_lst.extend(findFiles(d, ext))
        else:
            
    return match_lst


def main():
    print("Testing printDirFiles('..'):")
    printDirFiles("..")

    print("\nTesting findFiles('.', '.py'):")
    lst = findFiles(".", ".py")
    print(lst)
    assert isinstance(lst, list)

    print("\nTesting findFiles('..', '.csv'):")
    lst = findFiles("..", ".csv")
    print(lst)

if __name__ == "__main__":
    main()

