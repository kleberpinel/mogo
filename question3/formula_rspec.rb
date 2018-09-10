require './solution.rb'

module MOGOInterview
  RSpec.describe Formula do
    describe 'calculates non defined shape' do
      let(:shape){ 'hexagon' } # this shape is not expected by Formula
      let(:side) { 5 }
      it "perimeter" do
        perimeter = Formula.perimeter(shape, side)
        expect(perimeter).to eq(0)
      end
      it "area" do
        perimeter = Formula.area(shape, side)
        expect(perimeter).to eq(0)
      end
    end

    describe 'calculates square' do
      let(:shape){ 'square' }
      let(:side) { 5 }
      it "perimeter" do
        perimeter = Formula.perimeter(shape, side)
        expect(perimeter).to eq(20)
      end
      it "area" do
        perimeter = Formula.area(shape, side)
        expect(perimeter).to eq(25)
      end
    end

    describe 'calculates pentagon' do
      let(:shape){ 'pentagon' }
      let(:side) { 3 }
      it "perimeter" do
        perimeter = Formula.perimeter(shape, side)
        expect(perimeter).to eq(15)
      end
      it "area" do
        perimeter = Formula.area(shape, side)
        expect(perimeter).to eq(15.48)
      end
    end

    describe 'calculates triangle' do
      let(:shape){ 'triangle' }
      let(:side) { 2.5 }
      it "perimeter" do
        perimeter = Formula.perimeter(shape, side)
        expect(perimeter).to eq(7.5)
      end
      it "area" do
        perimeter = Formula.area(shape, side)
        expect(perimeter).to eq(2.17)
      end
    end
    describe 'calculates circle' do
      let(:shape)  { 'circle' }
      let(:radius) { 2 }
      it "perimeter" do
        perimeter = Formula.perimeter(shape, radius)
        expect(perimeter).to eq(12.57)
      end
      it "area" do
        perimeter = Formula.area(shape, radius)
        expect(perimeter).to eq(12.57)
      end
    end
  end
end