YSX - The YouTube Stock Market
Summer 2016		Group 1

Note: To test the features for admin users, please use "administrator@ysxadmin.org" and "ysxadminword" to login the admin account.

Project Abstract
YSX is a Stock Market simulator that uses a YouTube video’s views over the past day as a currency. Users are able to buy and sell YouTube videos they believe will rise in popularity to showcase their knowledge of what videos are the next hottest thing! YSX is ideal for YouTube users who enjoy browsing YouTube videos or sharing them with friends.
Overview
YSX is a Stock Market simulator for users who wish to learn about stock markets without having to risk any of their own money. YSX uses its own unique currency that can be used to buy and sell videos. Each video’s cost will be equal to how many views it got in the past 24 hours. If a video had 523 views in the past day, the player can purchase stocks for the video which cost 523$ each. The users are encouraged to try and maximize their profits by buying videos they think will grow in popularity. Along with the stock market system, users are able to share videos with their friends or find new videos that the user would be interested in based on factors such as: videos their friends liked, videos similar to the ones they just watched, and videos that are rising in popularity.
Target Audience
As the largest video sharing website in the world right now, YouTube has an innumerable amount of users. Today, YouTube is for more than just the of sharing and viewing of videos, it is also used by content creators to express themselves and make a living out of it. Furthermore, it is also a platform to help many businesses thrive. They use YouTube to find their business partners and to help promote their own products. This software provides a service for these different types of people and their different purposes. For an average viewer on YouTube, this software will help them identify the popular and rising channels, and thus provides an alternative way of finding channels to their liking besides YouTube’s built in recommendation system. For a content creator, this software will help them to identify the type of channels that are on the rise and what is hot right now, which could serve as a guide on how to improve their channels. As for advertisers or promoters, YSX provides them with information on what channels are the fastest growing so that they have valuable information on what channels or videos will bring them the largest audience possible.

Competitive Analysis
There are multiple stock market simulations online. Ours differs in that it applies the concepts of a stock exchange to the novel subject of YouTube videos. This offers it a competitive advantage as it will target a younger demographic with an easier to understand and familiar product, instead of the typical business and economical targeted competing stock exchange simulations. Furthermore, instead of giving users an idea on the dynamics of what will be the next big business, YSX teaches its customers how to spot up and coming web videos.
Goals
Create a login system so that users can log in and keep track of videos.
Create an Admin user who is able to view a list of all the users that are created. An admin will also be able to delete users, mute users, or reset a user’s funds back to the starting amount.
Implement YouTube API so that users can track, sell, and share YouTube videos.
Define rules for how the trading system will work. For example, the video may need to be at least a few days old so that the buying price isn’t close to zero.
Create a leaderboard to promote competitive play.
Design a prediction algorithm to help users find videos they may like based on videos they viewed previously, videos their friends liked or videos that are rising fast.
Create software that will show a graph of a video’s past 30 days’ stats.
Have a rundown of the users gains and losses over the past few days on their profile. This will show them which of their videos increased or decreased in value, which videos are increasing drastically right now and what videos are drastically losing popularity.

User Stories
The users of YSX each have their own personal needs. The biggest share of users are the customers themselves. Because YSX is a stock market simulator the customers of the website are players who are looking for a competitive challenge, where they can use their strategy and knowledge to get the most out of their investments and earn the most capital. Then there are Admins, which are users who have the purpose of keeping balance and order for the site. They have special powers that can be used for testing or debugging, but also to create a level, fair and safe playing field for everyone. Lastly are the users who don’t care much for playing the stock market simulator, but instead use the site for its suggestions on what videos are popular and well liked.

Story: View List of All Users (Admin)
Admins will have access to view the index of all the users in the database. They can click the button “Users” from their header bar which will bring them to the User Index Page.
From the User Index page, Admins can see how many users are in the database at a glance. There’ll be some useful stats listed like how many users there are total, the average player’s money, and how many admin accounts there are. Below that there’s a list of profile cards, one for each user.
The Profile Cards will show the user’s account name, their email, their account level (reflected by the colour of the profile card: dark blue = regular user, dark green = admin), and any other useful information at a glance.
If the Admin clicks on a profile card, they’ll be directed to a user page where they can view additional information about the user’s account, such as friends list, bookmarks, what videos they have purchased, etc. They will also have options to delete the account or do a password reset (the admin won’t have access to what the password was prior, but they’ll be able to see a new randomly generated password that they can give to the user who was locked out of their account.)

Story: User Login
At the home page users are able to login by clicking the button in the top left that says “Login”. After clicking the button, the user is redirected to the login page which asks them for the email they signed up with, their password and if they want to be remembered on this computer. If the user does not yet have an account, they can click the link that says “Sign up now!” which redirects them to the Sign Up page. If the user has a Google account, they can click the “Login with Google” button to login via Google Login. After clicking the button they’ll be redirected to the Google login system where they can choose which of their Google accounts they wish to sign in as.

Story: User Sign Up
The root of the homepage is set to the “Sign Up” page so that the user can quickly create an account. If the user instead wishes to create an account later, they can always navigate to the “Sign Up” page by clicking the “Sign up” button in the header. To sign up, all the user needs to enter is their Email Address, which is the username they’ll need for logging in with, the name they wish to be addressed by, and the password they’d like to set. After entering the required data, their account will be created and they’ll have access to more features on the site, like uploading videos, and seeing their user profile.

Story: User Profile (User)
After logging in the user can view their profile by clicking the profile button in the header. The profile will display their profile image, and name in a banner. Below the banner there are three tabs, one for items and money, one for friends and one for the videos they have saved. Clicking on the items tab will list the reward items they have collected and how much money they currently have. After clicking the friends tab, the user can add friends and see which of their friends are online. They can click on a friend’s name to send them a message or a video. Clicking the video tab brings up all the videos the user has uploaded or saved. From here, it’s possible for the user to delete their videos or if they click on them, they’ll open the youtube video in a new browser tab.

Story: Homepage
The home page can be navigated to by clicking on the “Home” button in the top left of the header. From here the most apparent feature is the youtube browsing area. This area takes up most of the home page and lists featured youtube videos. Each YouTube video has its own block which has its title and view count. What videos appear here are based on recent popularity.
To the right of the YouTube browsing area, there’s an area where users can live chat about anything they like. An account is required for live chat. Admins have the ability to ban or timeout users who use foul language.
To the bottom of the homepage there’s a “stock ticker” which updates in real time with videos that are drastically increasing or decreasing in popularity. A user can click on a video in the ticker and it’ll take the to the videos page which will list useful information for the video. The user will also have the option to then buy the video (or sell if they already have it), add it to their favourites or share it with their friends.

Story: Adding Videos
Any user is able to add a video to the database. Once logged in, they can click on the video tab in the header at the top of the page. From there, they’re prompted to copy and paste a link to the youtube video. The user can then press enter or click the button to finalize adding the video to the database. Once the video is added, the user will be redirected to the index of all the videos in the database.

Story: Video Index
After logging in, a user can reach the video index page by clicking the “videos” button in the header. From here they’ll see a message asking if they want to upload a video to the database from youtube. This link will redirect to the adding videos page. Below that box there is a “latest videos” section, which lists all the videos in the database. Each video in the list will have its own box which consists of the picture of the youtube thumbnail, the title of the video, the publishing date, the amount of likes, and the amount of dislikes for the video. Below the dislikes there is an option to delete the video from the database, which is only available to admin accounts. If the user clicks on the box containing the youtube video, the youtube video will open in a new tab.

Story: Search Bar
Users are able to search for youtube videos by using the search bar in the header of the page. You do not need to be logged in to use the search bar. The user can type what they want to search for, and upon pressing enter a new tab will be opened containing the search results.
