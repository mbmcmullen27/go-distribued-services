for i in $(cat repos); do
  repo=${i##*/} 
  if [ -d "project/repos" ]; then
    (cd projects && git clone $i)
  else
    echo "project/$repo exists..."
    echo -n " - "
    (cd projects/$repo && git pull)
  fi
done
