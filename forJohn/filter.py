import os

allowed = None
with open('books.ids') as fp:
  allowed = set(line.strip() for line in fp)
print(len(allowed))

print(list(allowed)[:20])

# example: /mnt/lustre/godzilla/jfoley/books/other/1980censusofpopu8022uns.xml
with open('all_books') as fp:
  for line in fp:
    bkid = os.path.basename(line.strip()[:-4])
    if bkid in allowed:
      print(line.strip())

