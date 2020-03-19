function chrom_best = FindBest(chrom, fitness, N_chrom)
chrom_best = zeros(1, N_chrom+1);
[maxNum, maxCorr] = min(fitness);
chrom_best(1:N_chrom) =chrom(maxCorr, :);
chrom_best(end) = maxNum;