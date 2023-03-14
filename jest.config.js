module.exports = {
    reporters: [
        'default',
        ['jest-junit', {
            outputDirectory: test,
            outputName: repot-file
        }

        ]
    ]
        
}
