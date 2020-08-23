
#環境ディレクトリ:
#/home/ec2-user/environment

require '/home/ec2-user/environment/bowling/lib/bowling'
require '/home/ec2-user/environment//bowling/spec'
#require '/home/ec2-user/environment//bowling/spec/lib/bowling_spec.rb'

#テスト用コマンド：
#rspec spec/lib/bowling_spec.rb

describe "ボウリングのスコア計算" do
    describe "全体の合計" do
        context "全ての投球がガーターだった場合" do
            it "0になること" do
                @game =Bowling.new
                
                20.times do
                    @game.add_score(0)
                end
                
                expect(@game.total_score).to eq 0
                
            end
        end
        
        context "全ての投球で1ピンずつ倒した場合" do
            it "20点になること" do
                @game = bowling.new
                
                20.times do
                    @game.add_score(1)
                end
                
                expect(@game.total_score).to eq 20
                
            end
        end
    end
end
