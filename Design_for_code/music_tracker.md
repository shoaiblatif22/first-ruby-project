## 1. Describe the Problem ##
Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

>> As a user
>> So that I can keep track of my music listening
>> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface ##
The interface of a class includes:

The name of the class.
The design of its initializer and the parameters it takes.
The design of its public methods, including:
Their names and purposes
What parameters they take and the data types.
What they return and that data type
Any side effects they might have.
Steps 3 and 4 then operate as a cycle.

class MusicTracker
  def initialize
    @tracks = [] #Initialises an array of tracks
  end (done)

  def add_tracks(track)
    #add tracks into our array. Either push the obj on array or we can <<
  end (done)

  def display_tracks
    #display each track that has been added 
  end

## 3. Create Examples as Tests ##
These are examples of the class being used with different initializer arguments, method calls, and how it should behave.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.

#1 
Create a new music tracker object with an empty array of tracks
music_tracker = MusicTracker.new
music_tracker.list => []

#2 
Add a track to the track list
music_tracker = MusicTracker.new
music_tracker.add_track("track1")

#3 
Prints out the list of tracks
music_tracker = MusicTracker.new
music_tracker.add_track("track1")
music_tracler.add_track("track2")
expect {...}

#4
Prints an appropriate message when the track list is empty
music_tracker = MusicTracker.new
expect { musictracker.display_tracks }.to output ......stdout

#5
adds and displays multiple tracks
music_tracker = MusicTracker.new
music_tracker.add_track("track1")
music_tracker.add_track("track2")
music_tracker.add_track("track3")
expect { musictracker.display_tracks }.to output ......stdout

## 4. Implement the Behaviour ##
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.