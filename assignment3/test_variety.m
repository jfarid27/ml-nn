function test_variety()
  hiddens = [18, 37, 113, 189, 236] 
  for i = 1:size(hiddens, 2),
    fprintf('\n\n\nStarting hidden: %f.\n', hiddens(:, i));
    a3(0, hiddens(:,i), 1000, 0.35, 0.9, true, 100, false); 
  end
end

function test_hiddens()
  hiddens = [10, 30, 100, 130, 170] 
  for i = 1:size(hiddens, 2),
    fprintf('\n\n\nStarting hidden: %f.\n', hiddens(:, i));
    a3(0, hiddens(:,i), 1000, 0.35, 0.9, false, 100, false); 
  end
end

function test_decays()
  decays = [0.0001, 0.001, 0.01, 1, 5] 
  for i = 1:size(decays, 2),
    fprintf('\n\n\nStarting decay: %f.\n', decays(:, i));
    a3(decays(:, i), 200, 1000, 0.35, 0.9, false, 100, false); 
  end
end

function test_rates_momentums()
  rates = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20.0]
  momentums = [0, 0.9]
  for i = 1:size(rates, 2),
    for j = 1: size(momentums, 2),
       fprintf('Starting rate: %f.\n', rates(:, i));
       fprintf('Starting momentum: %f.\n', momentums(:, j));
       a3(0, 10, 70, rates(:, i), momentums(:, j), false, 4, false); 
    end
  end
end
