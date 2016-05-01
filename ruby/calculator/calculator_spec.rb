require_relative 'calculator'

describe Calculator do
  before do
    @calculator = Calculator.new(5, 3)
  end
  it 'should take two integer values and convert them to floats' do
    expect(@calculator.num1).to eq(5.0)
    expect(@calculator.num2).to eq(3.0)
  end

  it 'should have the ability to add two values' do
    expect(@calculator.add(5, 3)).to eq(8.0)
  end

  it 'should have the ability to subtract two values' do
    expect(@calculator.subtract(5, 3)).to eq(2.0)
  end

  it 'should have the ability to mutliply two values' do
    expect(@calculator.multiply(5, 3)).to eq(15.0)
  end

  it 'should be able to divide two values' do
    expect(@calculator.divide(5, 3)).to eq(1.6666666666666667)
  end
end
