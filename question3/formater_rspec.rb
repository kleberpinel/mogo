require './solution.rb'

module MOGOInterview
  RSpec.describe Formater do

    let(:index) { 1 }
    let(:side)  { 3 }
    let(:perimeter) { 15 }
    let(:area) { 15.48 }
    let(:dimension) { 'side length' }

    describe 'Gets the output formated for non defined shape' do
      # This one I am not mocking because this case is related to the response inside
      # of Formula methods. This way we can also ensure another layer
      describe 'hexagon' do
        let(:shape) { 'hexagon' } # this shape is not expected by Formula
        it "sentense" do
          output = Formater.call(index, shape, side)
          expected = "calculation not available"
          expect(output).to eq(expected)
        end
      end
    end

    describe 'Gets the output formated' do
      before do
        allow(Formula).to receive(:perimeter).and_return(perimeter)
        allow(Formula).to receive(:area).and_return(area)
      end

      describe 'square formated' do
        let(:shape) { 'square' }
        it "sentense" do
          output = Formater.call(index, shape, side)
          expected = "Shape #{index} is a #{shape}, with #{dimension} #{side}, having a"\
                     " perimeter of #{perimeter} and an area of #{area} units square."
          expect(output).to eq(expected)
        end
      end

      describe 'pentagon formated' do
        let(:shape) { 'pentagon' }
        let(:dimension) { 'side length' }
        it "sentense" do
          output = Formater.call(index, shape, side)
          expected = "Shape #{index} is a #{shape}, with #{dimension} #{side}, having a"\
                     " perimeter of #{perimeter} and an area of #{area} units square."
          expect(output).to eq(expected)
        end
      end

      describe 'triangle formated' do
        let(:shape) { 'triangle' }
        let(:dimension) { 'side length' }
        it "sentense" do
          output = Formater.call(index, shape, side)
          expected = "Shape #{index} is a #{shape}, with #{dimension} #{side}, having a"\
                     " perimeter of #{perimeter} and an area of #{area} units square."
          expect(output).to eq(expected)
        end
      end

      describe 'circle formated' do
        let(:shape) { 'circle' }
        let(:dimension) { 'a raius of' }
        it "sentense" do
          output = Formater.call(index, shape, side)
          expected = "Shape #{index} is a #{shape}, with #{dimension} #{side}, having a"\
                     " perimeter of #{perimeter} and an area of #{area} units square."
          expect(output).to eq(expected)
        end
      end
    end
  end
end