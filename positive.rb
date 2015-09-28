require 'fastimage'

class Positive
	@@txt = ""

	def initialize()
		Dir::glob("./negative/*.jpg").each {|f|
  			# ここにマッチしたファイルに対して行う処理を記述する
  			# この例ではファイル名とファイルのサイズを標準出力へ出力している
  			puts "#{f}"
  			fileOpen("#{f}")
		}
		File.write("negativeImage.txt", @@txt)
	end

	def fileOpen(fileName)
		image = FastImage.size(fileName)
		#@@txt += "#{fileName}  1  0 0 #{image[0]} #{image[1]}@"+'\n'
		@@txt += "./negative/#{fileName}@"
	end
end
Positive.new()