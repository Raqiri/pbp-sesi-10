const mahasiswaNim = '202401';
const updatedData = {
    nama: 'Ronaldo',
    gender: 'L',
    prodi: 'TE',
    alamat: 'Jl. Cibolang Kaler'
};

fetch(`http://localhost:3000/mahasiswa/${mahasiswaNim}`, {
    method: 'PUT',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(updatedData)
})
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));


const mahasiswanim = '202403'; 

fetch(`http://localhost:3000/mahasiswa/${mahasiswanim}`, {
    method: 'DELETE',
    headers: {
        'Content-Type': 'application/json'
    }
})
    .then(response => response.json())
    .then(data => console.log('DELETE Response:', data))
    .catch(error => console.error('DELETE Error:', error));

    const newData = {
    nim: '202430',
    nama: 'Dewi Purnama',
    gender: 'P',
    alamat: 'Cisaat',
    prodi: 'TI'
};

fetch('http://localhost:3000/mahasiswa', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(newData)
})
    .then(response => response.json())
    .then(data => console.log('POST Response:', data))
    .catch(error => console.error('POST Error:', error));
