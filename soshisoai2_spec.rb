require './spec_helper'
require './soshisoai1.rb'

myarr = Soshisoai.new ('./soshisoai2.txt')
myarr1 = myarr.arr
myarr2 = myarr.getcombi(myarr1)
arr2 = ["Ac", "Ac", "Aa", "Ba", "Bb"]
myarr3 = myarr.flatarr(myarr2)
myarr4 = myarr.swapmale(myarr3)
myarr5 = myarr.findmatch(myarr4)

describe Soshisoai do

  specify{ expect(myarr.arr).to eq ["A:c,a,b", "B:c,f,a", "C:f,c,b", "D:d,d,d", "E:", "F:e,c,a", "a:A,D,F", "b:C,B,A", "c:D,A,C", "d:A,A,B", "e:C,A,E", "f:D,B,A"]}
  
  specify{ expect(myarr.getcombi(myarr1)).to eq ["Ac,Aa,Ab", "Bc,Bf,Ba", "Cf,Cc,Cb", "Dd,Dd,Dd", nil, "Fe,Fc,Fa", "aA,aD,aF", "bC,bB,bA", "cD,cA,cC", "dA,dA,dB", "eC,eA,eE", "fD,fB,fA"]}
  
  specify{ expect(myarr.flatarr(myarr2)).to eq ["Ac", "Aa", "Ab", "Bc", "Bf", "Ba", "Cf", "Cc", "Cb", "Dd", "Dd", "Dd", "Fe", "Fc", "Fa", "aA", "aD", "aF", "bC", "bB", "bA", "cD", "cA", "cC", "dA", "dA", "dB", "eC", "eA", "eE", "fD", "fB", "fA"]}

  specify{ expect(myarr.swapmale(myarr3)).to eq ["cA", "aA", "bA", "cB", "fB", "aB", "fC", "cC", "bC", "dD", "dD", "dD", "eF", "cF", "aF", "aA", "aD", "aF", "bC", "bB", "bA", "cD", "cA", "cC", "dA", "dA", "dB", "eC", "eA", "eE", "fD", "fB", "fA"]}
  
end
