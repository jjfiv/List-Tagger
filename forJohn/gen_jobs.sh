for x in $(seq 0 199); do
  num=`printf "%04d" $x`;
  echo "qsub -o b${num}.out -e b${num}.err -cwd -b y /bin/bash extract_job.sh features${num} fewer_books/booklist${num}";
done
