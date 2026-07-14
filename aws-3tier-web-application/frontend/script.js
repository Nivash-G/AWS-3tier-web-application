async function loadEmployees() {
    const response = await fetch("/api/employees");
    const employees = await response.json();
    const tbody = document.querySelector("#employees tbody");
    tbody.innerHTML = "";
    employees.forEach(emp => {
        tbody.innerHTML += `
        <tr>
            <td>${emp.employee_id}</td>
            <td>${emp.first_name} ${emp.last_name}</td>
            <td>${emp.department}</td>
            <td>${emp.job_title}</td>
            <td>${emp.salary}</td>
        </tr>`;
    });
}
loadEmployees();
