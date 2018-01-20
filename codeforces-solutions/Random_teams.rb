#combinatrics --- best_n is wrong, while worst_ans is right... couldn't solve ...:) 

n,m = gets.split().map(&:to_i)

worst_n  = (n-m+1)
worst_ans = worst_n *(worst_n-1)/2 


best_sep = n/m 
best_div = n%m 


best_n = best_sep * (best_sep *(best_sep-1)/2 * m ) +best_div* best_sep  

best_n += 2* best_div
p best_n 
p worst_ans







