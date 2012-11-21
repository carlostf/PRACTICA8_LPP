require 'matrices'

describe Matriz do
  before :each do
    @matriz = Matriz.new([[10,10,10],[10,10,10],[10,10,10]])
  end

  it " Se debe poder sumar dos matrices de enteros" do
    @aux = Matriz.new([[10,10,10],[10,10,10],[10,10,10]])
    (@matriz + @aux).matriz.should == [[20,20,20],[20,20,20],[20,20,20]]
  end

  it " Se debe poder restar dos matrices de enteros" do
    @aux = Matriz.new([[10,10,10],[10,10,10],[10,10,10]])
    (@matriz - @aux).matriz.should == [[0,0,0],[0,0,0],[0,0,0]]
  end

  it " Se debe poder sumar dos matrices de racionales" do
    @aux = Matriz.new([[0.5, 0.5, 0.5],[0.5, 0.5, 0.5],[0.5, 0.5, 0.5]])
    (@matriz % @aux).matriz.should == [["3/2","3/2","3/2"],["3/2","3/2","3/2"],["3/2","3/2","3/2"]]
  end

  it " Se debe poder multiplicar dos matrices de enteros" do
    @aux = Matriz.new([[1,2,3],[1,2,3],[1,2,3]])
    (@matriz * @aux).matriz.should == [[3,6,9],[3,6,9],[3,6,9]]
  end

  it " Se debe poder multiplicar dos matrices de racionales" do
    @aux = Matriz.new([[0.5, 0.5, 0.5],[0.5, 0.5, 0.5],[0.5, 0.5, 0.5]])
    (@matriz / @aux).matriz.should == [["3/2","3/2","3/2"],["3/2","3/2","3/2"],["3/2","3/2","3/2"]]
  end



end
