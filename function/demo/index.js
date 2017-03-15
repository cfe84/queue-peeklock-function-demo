module.exports = function (context, message) {
    context.log(context.bindingData.id, ' - dequeueCount =', context.bindingData.dequeueCount);
    setTimeout(() => context.done("failure is always an option"), 5000);
};