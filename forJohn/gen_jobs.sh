for x in $(seq 0 565); do
  num=`printf "%04d" $x`;
  echo "qsub -o b${num}.out -e b${num}.err -cwd -b y /bin/bash extract_job.sh features${num} /mnt/nfs/work3/jfoley/reu-tagging/lists/booklist${num}";
done
