/* When the leads are inserted into the database it would add Doctor 
prefixed for all Lead Names */
trigger PrefixDoctor on Lead (after insert,after update) {

List<Lead> l1  = trigger.new;

for(Lead l: l1)
{
l.firstname = 'Dr.'+ l.firstname;
}
}