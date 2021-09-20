
#check if the solution is eligible
#solution is an array with the solution
function eligibleSolution(solution, A)
    n,m = size(A)
    
    for i in 1:n
        for j in 1:m
           if solution[j]+A[i,j] > 1
                return false
           end
        end
    end
    return true
end