class LoadData < ActiveRecord::Migration
  def up
  	down

  	us1 = User.new(:username => "steph", :password => "pickles", :first_name => "Steph", :last_name => "D")
  	us2 = User.new(:username => "jj", :password => "pickles", :first_name => "JJ", :last_name => "L")
    us3 = User.new(:username => "skipper", :password => "pickles", :first_name => "Jess", :last_name => "L")
    us1.test_group = 1;
    us2.test_group = 2;
    us3.test_group = 1;
    us1.save
    us2.save
    us3.save

    	ts1a = Story.new(:summary => "A shop owner has been having nightmares about a serial killer, and he thinks they might be real. Detective Dana doesn't believe him, but then a murder happens fitting the man's exact description...", :title => "Chase")
    	ts1a.user = us3
    ts1a.test_group = 1
    ts1a.genre = "fiction";
  	ts1a.save(:validate => false)


    ts1b =Story.new(:summary => "A shop owner has been having nightmares about a serial killer, and he thinks they might be real. Detective Dana doesn't believe him, but then a murder happens fitting the man's exact description...", :title => "Chase")
    ts1b.user = us3
    ts1b.test_group = 2
    ts1b.genre = "fiction";
    ts1b.save(:validate => false)

  	ts2a = Story.new(:summary => "A terminally ill patient is lying to his doctors.", :title => "Secrets")
    ts2a.test_group = 1
    ts2a.genre = "fiction";
  	ts2a.save(:validate => false)


    ts2b =  Story.new(:summary => "A terminally ill patient is lying to his doctors.", :title => "Secrets")
    ts2b.user = us3
    ts2b.test_group = 2
    ts2b.genre = "fiction";
    ts2b.save(:validate => false)


    ts3a = Story.new(:summary => "Jack and Sammy chase after the American Dream...not always in the right ways.", :title => "Days and Days")
    ts3a.user = us3
    ts3a.test_group = 1
    ts3a.genre = "fiction";
    ts3a.save(:validate => false)


    ts3b = Story.new(:summary => "Jack and Sammy chase after the American Dream...not always in the right ways.", :title => "Days and Days")
    ts3b.user = us3
        ts3b.test_group = 2
    ts3b.genre = "fiction";
    ts3b.save(:validate => false)


    n1 = Node.new(:text => "\"Dana didn't believe in fortune tellers.\"")
  	n1.truth = false
    n1.constraint_num = 0
  	n1.truth_height = 1
  	n1.story = ts1a
  	n1.save(:validate => false)


    n2 = Node.new(:text => "\"Dana didn't believe in fortune tellers.\" ")
    n2.user = us3
    n2.truth = false
    n2.constraint_num = 0
    n2.truth_height = 1
    n2.story = ts1b
    n2.save(:validate => false)
    
    n3 = Node.new(:text => "Dr. Tam buried his head in his hands. \"You obviously did not fight in the Punic Wars, Mr. James.\"")
    n3.user = us3
    n3.truth = false
    n3.constraint_num = 0
    n3.truth_height = 1
    n3.story = ts2a
    n3.save(:validate => false)


    n4 = Node.new(:text => "Dr. Tam buried his head in his hands. \"You obviously did not fight in the Punic Wars, Mr. James.\"")
    n4.user = us3
    n4.truth = false
    n4.constraint_num = 0
    n4.truth_height = 1
    n4.story = ts2b
    n4.save(:validate => false)


    n5 = Node.new(:text => "We were somewhere around Kettleman City on the edge of the desert when the drugs began to take hold.")
    n5.user = us3
    n5.truth = false
    n5.constraint_num = 0
    n5.truth_height = 1
    n5.story = ts3a
    n5.save(:validate => false)

    n6 = Node.new(:text => "We were somewhere around Kettleman City on the edge of the desert when the drugs began to take hold.")
    n6.user = us3
    n6.truth = false
    n6.constraint_num = 0
    n6.truth_height = 1
    n6.story = ts3b
    n6.save(:validate => false)




    c1 = Constraint.new(:story_id => 1, :title => "Unconvinced", :text => "Dana accuses the shop owner of being the murderer", :constraint_num => 0 )
    c1.save

    c2 = Constraint.new(:story_id => 1, :title => "Confused", :text => "The shop owner is the victim this time." , :constraint_num => 1 )
    c2.save

    c3 = Constraint.new(:story_id => 1, :title => "Patterns", :text => "Just when there seems to be a pattern, the killer breaks it.", :constraint_num =>2 )
    c3.save

    c4 = Constraint.new(:story_id => 1, :title => "Memory loss", :text => "Dana wakes up with a credit card lodged between her ribs", :constraint_num =>3 )
    c4.save

    c5 = Constraint.new(:story_id => 1, :title => "Taken", :text => "The government takes Dana away", :constraint_num =>4 )
    c5.save

    c21 = Constraint.new(:story_id => 3, :title => "Going Away", :text => "One of the nurses starts making a chart of all the patient's lies.", :constraint_num => 0 )
    c21.save

    c22 = Constraint.new(:story_id => 3, :title => "Suspicions", :text => "The patient has an emergency.", :constraint_num => 1 )
    c22.save

    c23 = Constraint.new(:story_id => 3, :title => "Strike", :text => "Some of the details of one of the lies turn out to be true.", :constraint_num =>2 )
    c23.save

    c24 = Constraint.new(:story_id => 3, :title => "Knowing", :text => "The patient asks to be let to die.", :constraint_num =>3 )
    c24.save

    c25 = Constraint.new(:story_id => 3, :title => "Wants and Needs", :text => "Someone from the patient's past arrives.", :constraint_num =>4 )
    c25.save


    c31 = Constraint.new(:story_id => 5, :title => "Odd Secrets", :text => "Sammy has a law degree. Jack finds out.", :constraint_num => 0 )
    c31.save

    c32 = Constraint.new(:story_id => 5, :title => "Vegas", :text => "Jack is taken to Vegas, where he winds up $5k in debt.", :constraint_num => 1 )
    c32.save

    c33 = Constraint.new(:story_id => 5, :title => "Runaway", :text => "'But I don't know where else to go!", :constraint_num =>2 )
    c33.save

    c34 = Constraint.new(:story_id => 5, :title => "Separation Anxiety", :text => "Sammy says he is moving to Brooklyn; he is lying", :constraint_num =>3 )
    c34.save

    c35 = Constraint.new(:story_id => 5, :title => "Dollars", :text => "Sammy catches Jack spending their savings on...", :constraint_num =>4 )
    c35.save


  end

  def down
  	Story.delete_all
  	Node.delete_all
  end
end
