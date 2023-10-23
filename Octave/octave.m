% Variables and data types
a = 1; % Number variable
b = "Alice"; % String variable

% Control flow statements
if (a > 0)
  disp("a is positive.");
else
  disp("a is not positive.");
endif

for i = 1:10
  disp(i);
endfor

% Functions
function greet(name)
  disp(sprintf("Hello, %s!", name));
endfunction

greet(b);

% arrays
x = [1, 2, 3];
x1 = zeros(3)

% matrices as 2D arrays
A = zeros(3, 3);

%indexing and manipulation
x(1) = 10;

disp(x);

disp(A(2, 3)); %matrix[2][3]

% Vectors and matrices
x = [1, 2, 3]; % Vector
y = [1; 2; 3]; % Matrix
z = [1, 2, 3 ; 4, 5, 6]

% Cell matrices
C = {1, "Alice", [1, 2, 3]}; %store any type of data
disp(C{2});

% Create a cell matrix to store the results of a database query
results = {["Alice", 25], ["Bob", 30]};
% Print the first row of the results
disp(results{1});

% Linear algebra
z = x * y; % Matrix multiplication
z = inv(y); % Matrix inversion
z = eig(y); % Eigenvalue decomposition

% Numerical methods
z = quad(@(x) x.^2, 0, 1); % Numerical integration
z = diff(@(x) x.^2, 0); % Numerical differentiation

% Hash map
% Create a hash table
hashtable = containers.Map();

% Add a key-value pair to the hash table
hashtable("Alice") = 25;

% Get the value for a key
value = hashtable("Alice");

% Print the value
disp(value);

