def search(field, title: nil, actress:nil, year:nil, **rest )
  p [title, actress, year , rest]
end 

search(:title, actress: "kate", year:"1996", hero: "leo", director: "james")