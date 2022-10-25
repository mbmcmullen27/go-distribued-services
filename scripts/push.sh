for i in $(cat repos); do
  repo=${i##*/} 
  if [ ! -d "project/$repo" ]; then
    (cd projects/$repo && git push) 
  fi
done
