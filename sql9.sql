/*Regular expression*/
use sameer;
select count(*) from employees;

/*expression-'^'*/
select email from employees where email regexp '^d';/*email starts with d*/
select email from employees where email regexp 'ay$';/*email ends with ay*/
select email from employees where email regexp 'ro?';/*email with r,o and ro*/
select email from employees where email regexp 'ro+';/*email with ro*/
select email from employees where email regexp 'ro*';/*email with r,o and ro*/
select email from employees where email regexp 'so|ro';/*email with ro and so*/
select email from employees where email regexp '[ba]';/*email with ba*/
select email from employees where email regexp '[ba|do]';
select email from employees where email regexp '[a-d].[o]';/*email with a to d then any character followed by o*/
select email from employees where email regexp '[a-d]...[o]';/*email with a to d then any 3 character followed by o*/
select email from employees;
select email from employees where email regexp '^[^DCL]*$';/*email without dcl*/
select email from employees where email regexp 'do[[:>:]]';/*email ending with do*/
