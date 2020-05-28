Trigger UpdateField on Account(before insert){
for(Account myAccount : trigger.new)
{
if (myAccount.Rating =='Hot') {
myAccount.Industry= 'Electronics';
}
}
}