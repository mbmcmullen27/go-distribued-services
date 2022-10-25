for i in $(cat repos); do
  repo=${i##*/} 
  if [ ! -d "project/$repo" ]; then
    ( cd projects/$repo && \
      git add . && \
      git commit -a --allow-empty-message -m '' \
    )
  fi
done
