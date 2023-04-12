RSpec.describe 'doubles' do
    it "tests the student's knowledge of the course's content" do
   
      # For each question, write the code that should go here

      db = double('Database Connection', connect: true, disconnect: "Goodbye")   
      expect(db.connect).to be true
      expect(db.disconnect).to eq("Goodbye")

      fs = double('File System')
      allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
      expect(fs.read).to eq('Romeo and Juliet')
      expect(fs.write).to be false

      
    end
  end